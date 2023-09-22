require 'rails_helper'

RSpec.describe Error do
  it 'exists' do
    error_data = {
      status: 404,
      error: 'Not Found'
    }

    error = Error.new(error_data)

    expect(error).to be_a(Error)
    expect(error.status).to eq(404)
    expect(error.error).to eq('Not Found')
  end
end