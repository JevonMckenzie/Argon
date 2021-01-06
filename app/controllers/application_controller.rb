class ApplicationController < ActionController::Base
 # before_action :require_login, only: :new
 # before_action :require_login, only: [:new, :create, :destroy, :update, :delete]
 # before_action :authenticate_user!
  protect_from_forgery

  include SessionsHelper

  # Force signout to prevent CSRF attacks
  def handle_unverified_request
    sign_out
    super
  end


  
  

  
  


  #private

  #def require_login
  #  unless signed_in?
  #    flash[:error] = "You must be logged in to access this section"
   #   redirect_to pages_login_url # halts request cycle
  #  end
 # end
end