require "rails_helper"

RSpec.describe UserFacade do
  describe '.get_user' do
    xit "fetches a user from the API and returns a User object" do
      user_fixture = File.read('spec/fixtures/get_user.json')
      stub_request(:get, "http://localhost:3000/api/v0/users/1")
        .to_return(status: 200, body: user_fixture)

      user = UserFacade.get_user(1).first

      expect(user.user_name).to eq("DChavez18")
      expect(user.email).to eq("dmchavez129@yahoo.com")
      expect(user.password_digest).to eq("password")
    end
  end
end