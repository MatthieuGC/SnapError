require 'rails/generators'

module SnapError
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path('../templates', __dir__)

      def copy_initializer
        template 'snap_error_definitions.rb', "#{Rails.root}/config/initializers/snap_error_definitions.rb"
        template 'snap_error_monkey_patches.rb', "#{Rails.root}/config/initializers/snap_error_monkey_patches.rb"
      end
    end
  end
end
