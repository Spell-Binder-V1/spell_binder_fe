require 'rails_helper'

RSpec.describe User, type: :model do
  it "shows user relationships and validations" do
    should have_many(:decks)

  end

  describe '.from_omniauth' do
    let(:response) do
      {
        uid: '123456',
        provider: 'google',
        info: {
          name: 'John Doe',
          email: 'john.doe@example.com'
        }
      }
    end

    it 'creates a new user' do
      expect do
        User.from_omniauth(response)
      end.to change(User, :count).by(1)
    end

    it 'returns the newly created user' do
      user = User.from_omniauth(response)
      expect(user).to be_a(User)
      expect(user.uid).to eq('123456')
      expect(user.provider).to eq('google')
      expect(user.username).to eq('John Doe')
      expect(user.email).to eq('john.doe@example.com')
    end
  end

  describe "#create_deck" do
    it "creates and associates a deck with a user" do
     user = User.create!(username: "TestUser", email: "Testemail@test.com")
     user.decks.create!(name: "Test Deck")

     expect(user.decks.count).to eq(1)
    end
  end
end