# require "rails_helper"

# RSpec.describe "Create an Account Page" do
#   it "will allow a user to create an account by filling out a form" do
#     user = File.read('spec/fixtures/get_user.json')
#     stub_request(:post, "http://localhost:3000/api/v0/register?email=testturing@turing.edu&password=password&username=turing_test").
#          with(
#            headers: {
#        	  'Accept'=>'*/*',
#        	  'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
#        	  'Content-Length'=>'0',
#        	  'User-Agent'=>'Faraday v2.7.11'
#            }).
#          to_return(status: 200, body: user, headers: {})

#        stub_request(:post, "http://localhost:3000/api/v0/login/turing_test,password").
#          with(
#            headers: {
#        	  'Accept'=>'*/*',
#        	  'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
#        	  'Content-Length'=>'0',
#        	  'User-Agent'=>'Faraday v2.7.11'
#            })
#        stub_request(:post, "http://localhost:3000/api/v0/login/turing_test,password").
#          with(
#            headers: {
#        	  'Accept'=>'*/*',
#        	  'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
#        	  'Content-Length'=>'0',
#        	  'User-Agent'=>'Faraday v2.7.11'
#            })
#        stub_request(:post, "http://localhost:3000/api/v0/register/turing_test,testturing@turing.edu,password").
#          with(
#            headers: {
#        	  'Accept'=>'*/*',
#        	  'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
#        	  'Content-Length'=>'0',
#        	  'User-Agent'=>'Faraday v2.7.11'
#            })



#     visit "/"

#     expect(page).to have_content("Create an Account")

#     click_on "Create an Account"

#     expect(current_path).to eq("/register")

#     expect(page).to have_content("User Name")
#     expect(page).to have_content("Email")
#     expect(page).to have_content("Password")
#     expect(page).to have_content("Password Confirmation")

#     fill_in :username, with: "turing_test"
#     fill_in :email, with: "testturing@turing.edu"
#     fill_in :password, with: "password"
#     fill_in :password_confirmation, with: "password"

#     click_on "Create Account"

#     expect(current_path).to eq("/decks")
#   end
# end