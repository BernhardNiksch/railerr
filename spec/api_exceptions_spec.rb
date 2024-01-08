# frozen_string_literal: true

require 'railerr'

RSpec.describe Railerr::APIException do
  include_examples 'API exception class', described_class, status: 500, default_message: 'A server error occurred'
end

RSpec.describe Railerr::BadRequestError do
  include_examples 'API exception class', described_class, status: 400, default_message: 'Bad request'
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

RSpec.describe Railerr::UnprocessableContentError do
  include_examples 'API exception class', described_class, status: 422, default_message: 'Unprocessable content'
end
