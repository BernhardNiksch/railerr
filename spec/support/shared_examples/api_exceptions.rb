# frozen_string_literal: true

RSpec.shared_examples 'API exception class' do |exception_class, status:, default_message:|
  # before(:each) do
  #   @exception = exception_class.new(nil, :some_action, :some_subject)
  # end

  context 'with an error message' do
    it 'raises the error with the specified message', openapi: false do
      error_message = 'Not the default error message'
      expect { raise exception_class, error_message }.to raise_error(exception_class, error_message)
    end
  end

  context 'with no error message provided' do
    it 'raises the error with the default message', openapi: false do
      expect { raise exception_class }.to raise_error(exception_class, default_message)
    end
  end

  it 'is associated with an HTTP status code' do
    expect(exception_class.new.status_code).to eq status
  end
end
