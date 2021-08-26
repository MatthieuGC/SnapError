Rails.configuration.to_prepare do
  # # CODES AND SUFFIXES

  # # -- Core - 0xxx

  # CoreExtensions::SnapError::ActiveRecord::RecordNotFound.const_set('SNAP_CODE', 0001)
  # CoreExtensions::SnapError::ActiveRecord::RecordNotFound.const_set('ERROR_SUFFIXES', {})

  # # -- Custom - 1xxx

  # SnapError::CustomErrors::CustomError.const_set('SNAP_CODE', 1000)
  # SnapError::CustomErrors::CustomError.const_set('ERROR_SUFFIXES', {})

  # SnapError::CustomErrors::NotAuthenticatedError.const_set('SNAP_CODE', 1001)
  # SnapError::CustomErrors::NotAuthenticatedError.const_set('ERROR_SUFFIXES', {})

  # SnapError::CustomErrors::AccountNotFound.const_set('SNAP_CODE', 1002)
  # SnapError::CustomErrors::AccountNotFound.const_set('ERROR_SUFFIXES', {})

  # SnapError::CustomErrors::SubscriptionNotFound.const_set('SNAP_CODE', 1003)
  # SnapError::CustomErrors::SubscriptionNotFound.const_set('ERROR_SUFFIXES', {})

  # SnapError::CustomErrors::LocationNotFound.const_set('SNAP_CODE', 1004)
  # SnapError::CustomErrors::LocationNotFound.const_set('ERROR_SUFFIXES', {})

  # # STATUSES

  # # -- Core

  # CoreExtensions::SnapError::ActiveRecord::RecordNotFound.const_set('SNAP_STATUS', :not_found)

  # # -- Custom

  # SnapError::CustomErrors::CustomError.const_set('SNAP_STATUS', :internal_server_error)
  # SnapError::CustomErrors::NotAuthenticatedError.const_set('SNAP_STATUS', :unauthorized)
  # SnapError::CustomErrors::AccountNotFound.const_set('SNAP_STATUS', :not_found)
  # SnapError::CustomErrors::SubscriptionNotFound.const_set('SNAP_STATUS', :not_found)
  # SnapError::CustomErrors::LocationNotFound.const_set('SNAP_STATUS', :not_found)
end
