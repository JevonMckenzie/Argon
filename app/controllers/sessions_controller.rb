  class SessionsController < ApplicationController
    
  def new
  end

def create
    user = User.find_by_email(params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      sign_in user
      redirect_to pages_dashboard_personal_url
    else
      flash.now[:error] = 'Invalid email/password combination'
      redirect_to pages_login_url
    end
  end

  def destroy
    sign_out
    redirect_to root_path
  end

end