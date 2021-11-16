module SnapError
  module Base
    attr_reader :snap_status

    ERROR_SUFFIXES = {}

    def initialize(*args)
      @snap_status =
        if self.class.const_defined?(:SNAP_STATUS)
          self.class::SNAP_STATUS
        else
          SnapError.configuration.default_http_status
        end

      super(*args)
    end

    def snap_code
      suffix = self.class::ERROR_SUFFIXES.find { |k, v| message.match?(k) }&.last
      snap_code =
        if self.class.const_defined?(:SNAP_CODE)
          self.class::SNAP_CODE
        else
          SnapError.configuration.default_error_code
        end

      return if "#{snap_code}#{suffix}".empty?

      "#{snap_code}#{suffix}"
    end
  end
end
