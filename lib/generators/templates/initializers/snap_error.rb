SnapError.configure do |config|
  config.default_error_code = 0
  config.default_http_status = :internal_server_error
end

Rails.configuration.to_prepare do
  ###############################################################################
  ## Include SnapError::Base in error classes you want to manage using the gem ##
  ###############################################################################

  # StandardError.include SnapError::Base
  # ActiveRecord::RecordNotFound.include SnapError::Base

  ################################################
  ## Define SnapError consts used for rendering ##
  ################################################

  # SnapError::ConstSetter.run!(
  #   'CustomError::MyError1' => {
  #     SNAP_CODE: 1,
  #     SNAP_STATUS: :not_found,
  #     ERROR_SUFFIXES: { 'not found' => :a, 'invalid argument' => :b }
  #   },
  #   'CustomError::MyError2' => {
  #     SNAP_CODE: 2,
  #     SNAP_STATUS: :unprocessable_entity
  #   }
  # )
end
