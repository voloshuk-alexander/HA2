class SessionsController < ApplicationController
  def new
end

def create
  user = User.find_by(email: params[:session][:email].downcase)
        user && user.authenticate(params[:session][:password])
        sign_in user
        redirect_to user
end

def destroy
end
end
