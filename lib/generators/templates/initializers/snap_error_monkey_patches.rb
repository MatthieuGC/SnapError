Rails.configuration.to_prepare do
  # ActiveRecord::RecordNotFound.include CoreExtensions::Error::ActiveRecord::RecordNotFound

  # ChargeBee::Error.include CoreExtensions::Error::ChargeBee::Error
  # ChargeBee::APIError.include CoreExtensions::Error::ChargeBee::APIError
  # ChargeBee::InvalidRequestError.include CoreExtensions::Error::ChargeBee::InvalidRequestError
  # ChargeBee::PaymentError.include CoreExtensions::Error::ChargeBee::PaymentError
  # ChargeBee::IOError.include CoreExtensions::Error::ChargeBee::IOError
  # ChargeBee::OperationFailedError.include CoreExtensions::Error::ChargeBee::OperationFailedError
end
