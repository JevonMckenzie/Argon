class UsersController < ApplicationController
  before_action :require_login, only: [:show, :edit, :update, :destroy]
  layout :resolve_layout

  def new
  end


  def show
    @user = User.find(params[:id])
  end

  def new
      @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Welcome to the Sample App!"
      redirect_to root_path
    else
      redirect_to pages_register_url
    end
  end

private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :firstformmath, :firstformit, :secondformmath, :secondformit, :thirdformmath, :thirdformit, :fourthformmath, :fourthformit, :tertiarymath, :tertiaryit, :image)
  end

   def resolve_layout
    case action_name
    when 'login', 'register'
      'authentication'
    else
      'dashboard'
    end
  end

end
