module SnapError
  module Renderer
    extend ActiveSupport::Concern
    include CustomErrors

    DEFAULT_ERROR_CODE = 0
    DEFAULT_ERROR_STATUS = :internal_server_error

    def self.included(klass)
      klass.class_eval do
        rescue_from Exception do |e|
          Bugsnag.notify(e)

          Rails.logger.error "ERROR #{e.inspect}"
          Rails.logger.error "Backtrace:\n\t#{e.backtrace.join("\n\t")}"

          render json: Rails.env.production? ? production_error(e) : development_error(e),
                 status: e.try(:snap_status) || DEFAULT_ERROR_STATUS
        end
      end
    end

    private

    def production_error(e)
      { error: e.try(:snap_code) || DEFAULT_ERROR_CODE }
    end

    def development_error(e)
      {
        error: e.try(:snap_code) || DEFAULT_ERROR_CODE,
        exception_class: e.class.to_s,
        raw_error_messages: Array(e.message),
        backtrace: e.backtrace
      }
    end
  end
end
