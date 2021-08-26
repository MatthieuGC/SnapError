require 'rails/generators'

module SnapError
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path('../templates', __dir__)

      def copy_initializer
        template 'config/snap_error.rb', "#{Rails.root}/config/snap_error.rb"
        template 'initializers/snap_error_definitions.rb', "#{Rails.root}/config/initializers/snap_error_definitions.rb"
        template 'initializers/snap_error_monkey_patches.rb', "#{Rails.root}/config/initializers/snap_error_monkey_patches.rb"
      end
    end
  end
end
