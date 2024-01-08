# RailErr

A declarative, fire and forget way to handle errors in a rails REST API, and associate each error to an HTTP status code.

## Basic Usage

Add a `rescue_from` block to your controller to rescue `APIException` exceptions and render the appropriate response:

```ruby
class ApplicationController < ActionController::API
  rescue_from APIErrors::APIError do |e|
    render json: { error: e.message }.to_json, status: e.status_code
  end
end
```

Now just raise your error inside your application and it will automatically be cast to the appropriate HTTP status.

```ruby
class SomethingReader < ApplicationService
  def call
    # Do Something
    raise Railerr::BadRequstError if params.invalid?
    raise Railerr::NotFoundError, 'Something not found' if something_not_found
  end
end
```

The above example will result in the following for the `BadRequestError`:

```json
  # HTTP/1.1 400 Bad Request
  {
    "error": "Bad request"
  }
```

And raising with a custom message, as for the `NotFoundError`:

```json
  # HTTP/1.1 404 Not Found
  {
    "error": "Something not found"
  }
```

## Custom Errors

Custom API Exception classes can be created through inheritance. You can override HTTP status code and default error message 
by defining the `STATUS_CODE` and `DEFAULT_MESSAGE` constants on your custom Exception

```ruby
class MyCustomError < APIException
  DEFAULT_MESSAGE = 'Custom error message' # Overrides the message inherited from APIException
  STATUS_CODE = Status::HTTP_400_BAD_REQUEST # Overrides the status code inherited from APIException
end
```
