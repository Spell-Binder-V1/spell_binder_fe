require "rails_helper"

RSpec.describe "Login Form Page" do
  xit "allows a user to login" do
    user = File.read('spec/fixtures/get_user.json')

    stub_request(:post, "http://localhost:3000/api/v0/login?password=password&username=turing_test").
    with(
      headers: {
      'Accept'=>'*/*',
      'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
      'Content-Length'=>'0',
      'User-Agent'=>'Faraday v2.7.11'
      }).
    to_return(status: 200, body: user, headers: {})

    stub_request(:get, "http://localhost:3000/api/v0/login//password")
    stub_request(:post, "http://localhost:3000/api/v0/login/turing_test,password").
    with(
      headers: {
      'Accept'=>'*/*',
      'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
      'Content-Length'=>'0',
      'User-Agent'=>'Faraday v2.7.11'
      })

    visit '/login'

    expect(page).to have_content("Login")
    expect(page).to have_content("User Name")
    expect(page).to have_content("Password")

    fill_in :username, with: "turing_test"
    fill_in :password, with: "password"
    click_on "Login"

    expect(current_path).to eq("/decks")
  end
end