require "rails_helper"

RSpec.describe User do
  it 'initializes with the correct attributes' do
    attributes = {
      user_name: 'SampleUser',
      email: 'sample@example.com',
      password_digest: 'hashed_password'
    }

    user = User.new(attributes)

    expect(user.user_name).to eq('SampleUser')
    expect(user.email).to eq('sample@example.com')
    expect(user.password_digest).to eq('hashed_password')
  end
end