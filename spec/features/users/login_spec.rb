require "rails_helper"

RSpec.describe "/login" do
  it "will allow a user to log in" do
    user_json = File.read("spec/fixtures/get_user.json")
    user_response = { data: JSON.parse(user_json) }
    stub_request(:get, "http://localhost:3000/api/v0/login").to_return(status: 200, body: user_json)

    stub_request(:post, "http://localhost:3000/api/v0/login")
      .with(
        body: { email: "dmchavez129@yahoo.com", password: "password" },
        headers: {
          "Accept" => "*/*",
          "Accept-Encoding" => "gzip;q=1.0,deflate;q=0.6,identity;q=0.3",
          "Content-Type" => "application/x-www-form-urlencoded",
          "User-Agent" => "Faraday v2.7.11"
        }
      )
      .to_return(status: 200, body: JSON.generate(user_response), headers: {})
   
    visit "/login"

    expect(page).to have_content("Login")
    expect(page).to have_content("Email")
    expect(page).to have_content("Password")

    fill_in :email, with: "dmchavez129@yahoo.com"
    fill_in :password, with: "password"
    click_on "Log In"

    user_id = user_response[:data]["data"]["id"]
    expect(user_id.to_i).to eq(1)
    expect(current_path).to eq(dashboard_path(user_id.to_i))
  end
end