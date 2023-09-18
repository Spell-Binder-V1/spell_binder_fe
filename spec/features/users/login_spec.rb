require "rails_helper"

RSpec.describe "Login Form Page" do
  it "allows a user to login" do
    user = File.read('spec/fixtures/get_user.json')
    stub_request(:get, "http://localhost:3000/api/v0/login").to_return(status: 200, body: user)

    visit '/login'

    expect(page).to have_content("Login")
    expect(page).to have_content("Email")
    expect(page).to have_content("Password")

    fill_in :email, with: "turing_test@turing.edu"
    fill_in :password, with: "password"
    click_on "Login"

    expect(current_path).to eq("/dashboard/1")  
  end
end