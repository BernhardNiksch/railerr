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

  # Raised for HTTP 502 Bad Gateway
  class BadGatewayError < APIException
    DEFAULT_MESSAGE = 'Bad gateway'
    STATUS_CODE = Status::HTTP_502_BAD_GATEWAY
  end

  # Raised for HTTP 400 Bad Request
  class BadRequestError < APIException
    DEFAULT_MESSAGE = 'Bad request'
    STATUS_CODE = Status::HTTP_400_BAD_REQUEST
  end

  # Raised for HTTP 409 Conflict
  class ConflictError < APIException
    DEFAULT_MESSAGE = 'Conflict'
    STATUS_CODE = Status::HTTP_409_CONFLICT
  end

  # Raised for HTTP 403 Forbidden
  class ForbiddenError < APIException
    DEFAULT_MESSAGE = 'Forbidden'
    STATUS_CODE = Status::HTTP_403_FORBIDDEN
  end

  # Raised for HTTP 504 Gateway Timeout
  class GatewayTimeoutError < APIException
    DEFAULT_MESSAGE = 'Gateway timeout'
    STATUS_CODE = Status::HTTP_504_GATEWAY_TIMEOUT
  end

  # Raised for HTTP 418 I'm A Teapot
  class ImATeapotError < APIException
    DEFAULT_MESSAGE = "I'm a teapot"
    STATUS_CODE = Status::HTTP_418_IM_A_TEAPOT
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

  # Raised for HTTP 408 Request Timeout
  class RequestTimeoutError < APIException
    DEFAULT_MESSAGE = 'Request timeout'
    STATUS_CODE = Status::HTTP_408_REQUEST_TIMEOUT
  end

  # Raised for HTTP 503 Service Unavailable
  class ServiceUnavailableError < APIException
    DEFAULT_MESSAGE = 'Service unavailable'
    STATUS_CODE = Status::HTTP_503_SERVICE_UNAVAILABLE
  end

  # Raised for HTTP 401 Unauthorized
  class UnauthorizedError < APIException
    DEFAULT_MESSAGE = 'Unauthorized'
    STATUS_CODE = Status::HTTP_401_UNAUTHORIZED
  end

  # Raised for HTTP 422 Unprocessable Content
  class UnprocessableContentError < APIException
    DEFAULT_MESSAGE = 'Unprocessable content'
    STATUS_CODE = Status::HTTP_422_UNPROCESSABLE_ENTITY
  end
end
