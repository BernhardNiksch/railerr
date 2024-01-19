# frozen_string_literal: true

require 'railerr'

RSpec.describe Railerr::APIException do
  include_examples 'API exception class', described_class, status: 500, default_message: 'A server error occurred'
end

RSpec.describe Railerr::BadGatewayError do
  include_examples 'API exception class', described_class, status: 502, default_message: 'Bad gateway'
end

RSpec.describe Railerr::BadRequestError do
  include_examples 'API exception class', described_class, status: 400, default_message: 'Bad request'
end

RSpec.describe Railerr::ConflictError do
  include_examples 'API exception class', described_class, status: 409, default_message: 'Conflict'
end

RSpec.describe Railerr::ForbiddenError do
  include_examples 'API exception class', described_class, status: 403, default_message: 'Forbidden'
end

RSpec.describe Railerr::GatewayTimeoutError do
  include_examples 'API exception class', described_class, status: 504, default_message: 'Gateway timeout'
end

RSpec.describe Railerr::ImATeapotError do
  include_examples 'API exception class', described_class, status: 418, default_message: "I'm a teapot"
end

RSpec.describe Railerr::InternalServerError do
  include_examples 'API exception class', described_class, status: 500, default_message: 'Internal server error'
end

RSpec.describe Railerr::LockedError do
  include_examples 'API exception class', described_class, status: 423, default_message: 'Locked'
end

RSpec.describe Railerr::NotFoundError do
  include_examples 'API exception class', described_class, status: 404, default_message: 'Not found'
end

RSpec.describe Railerr::RequestTimeoutError do
  include_examples 'API exception class', described_class, status: 408, default_message: 'Request timeout'
end

RSpec.describe Railerr::ServiceUnavailableError do
  include_examples 'API exception class', described_class, status: 503, default_message: 'Service unavailable'
end

RSpec.describe Railerr::UnauthorizedError do
  include_examples 'API exception class', described_class, status: 401, default_message: 'Unauthorized'
end

RSpec.describe Railerr::UnprocessableContentError do
  include_examples 'API exception class', described_class, status: 422, default_message: 'Unprocessable content'
end
