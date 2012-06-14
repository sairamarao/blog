class SessionsController < ApplicationController
def new
end


def create
  user = User.authenticate(params[:email], params[:password])
  if user
    session[:user_id] = user.id
	session[:user_name] = user.email
    redirect_to reviews_path, :notice => "Logged in!"
  else
    flash.now.alert = "Invalid email or password"
    render "new"
  end
end

def destroy
  session[:user_id] = nil
  redirect_to sign_up_path, :notice => "Logged out!"
end
end