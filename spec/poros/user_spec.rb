require 'rails_helper'

RSpec.describe User do
  it 'exists' do
    user_data = {
      id: 1,
      username: 'sample_username',
      email: 'sample@example.com',
    }

    user = User.new(user_data)

    expect(user).to be_a(User)
    expect(user.id).to eq(1)
    expect(user.username).to eq('sample_username')
    expect(user.email).to eq('sample@example.com')
  end
end