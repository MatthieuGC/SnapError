Rails.configuration.to_prepare do
  ## CODES
  # CustomError::MyError.const_set('SNAP_CODE', {})

  ## SUFFIXES
  # CustomError::MyError.const_set('ERROR_SUFFIXES', { 'not found' => :a, 'invalid argument' => :b })

  ## STATUSES
  # CustomError::MyError.const_set('SNAP_STATUS', :not_found)
end
