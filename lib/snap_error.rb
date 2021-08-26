require 'snap_error/version'
require 'snap_error/base'
require 'snap_error/renderer'
require 'ostruct'

module SnapError
  class << self
    def configuration
      @configuration ||= OpenStruct.new
    end

    def configure
      yield(configuration)
    end
  end
end
