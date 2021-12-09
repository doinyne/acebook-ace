require 'rails_helper'
require_relative '../../app/models/user.rb'

RSpec.describe MainController, type: :controller do
  describe "GET / " do
    it "responds with 200" do
      get :index
      expect(response).to have_http_status(200)
    end
  end
  describe "POST /log_in" do
    it "logs user in" do
    
    post :create, params: { email: "test@test.com", password:"test"} 
    p "#{session[:user_id]}"
    expect(session[:user_id]).to be_nil
    

  end 

end 
end

# post :create, params: { post: { message: "Hello, world!" } }
#       expect(Post.find_by(message: "Hello, world!")).to be

# def create 
#   user = User.find_by(email: params[:email])
#   if user.present? && user.authenticate(params[:password])
#       session[:user_id] = user.id
#       redirect_to posts_path, notice: "Logged in Succesfully"
#   else
#       redirect_to root_path, alert: "Login failed"
#   end     
# end 