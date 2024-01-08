# frozen_string_literal: true

require_relative 'status'

module Railerr
  # Base Exception class to raise exceptions associated with HTTP errors
  class APIException < StandardError
    DEFAULT_MESSAGE = 'A server error occurred'
    STATUS_CODE = Status::HTTP_500_INTERNAL_SERVER_ERROR

    def initialize(message = nil)
      super(message || default_message)
    end

    def default_message
      self.class::DEFAULT_MESSAGE
    end

    def status_code
      self.class::STATUS_CODE
    end
  end

  # Raised for HTTP 400 Bad Request
  class BadRequestError < APIException
    DEFAULT_MESSAGE = 'Bad request'
    STATUS_CODE = Status::HTTP_400_BAD_REQUEST
  end

  # Raised for HTTP 500 Internal Server Errors
  class InternalServerError < APIException
    DEFAULT_MESSAGE = 'Internal server error'
  end

  # Raised for HTTP 423 Locked
  class LockedError < APIException
    DEFAULT_MESSAGE = 'Locked'
    STATUS_CODE = Status::HTTP_423_LOCKED
  end

  # Raised for HTTP 404 Not Found.
  class NotFoundError < APIException
    DEFAULT_MESSAGE = 'Not found'
    STATUS_CODE = Status::HTTP_404_NOT_FOUND
  end

  # Raised for HTTP 422 Unprocessable Content
  class UnprocessableContentError < APIException
    DEFAULT_MESSAGE = 'Unprocessable content'
    STATUS_CODE = Status::HTTP_422_UNPROCESSABLE_ENTITY
  end
end
