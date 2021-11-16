require 'rails/generators'

module SnapError
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path('../templates', __dir__)

      def copy_initializer
        template 'initializers/snap_error.rb', "#{Rails.root}/config/initializers/snap_error.rb"
      end
    end
  end
end
