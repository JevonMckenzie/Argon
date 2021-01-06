class FirstformmathsController < ApplicationController


  def index
    @firstformmaths = Firstformmath.all
  end

  def firstformmath
  end 

  def new
  end 


  def show
    @firstformmath = Firstformmath.find(params[:id])
  end


   def create
        @firstformmath = current_user.firstformmaths.new(firstformmath_params)
        @comment = Comment.new(firstformmath: @firstformmath)
       #2 @firstformmath.save
        #@firstformmath.user_id = User.current_user
        if @firstformmath.save
          redirect_to firstformmaths_path 
        else
          redirect_to pages_dashboard_personal_url
        end
      end

layout :resolve_layout

  private

  def resolve_layout
    case action_name
    when 'login', 'register'
      'authentication'
    else
      'dashboard'
    end
  end

     

      def firstformmath_params
        params.require(:firstformmath).permit(:title, :body, :url, :created_at, :updated_at, :user_id)
      end

end



