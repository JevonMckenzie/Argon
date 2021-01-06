class CommentsController < ApplicationController

	# => before_action :find_commentable

    

     def create
        @firstformmath   = Firstformmath.find(params[:firstformmath_id])
        @comment = @firstformmath.comments.build(params[:comment].permit(:body))
        @comment.user_id = current_user.id
        @comment.save!
       #2 @firstformmath.save
       #@comment.user_id = current_user.id
        if @comment.save
          redirect_to firstformmaths_path  
        else
          redirect_to pages_dashboard_personal_url
        end
      end

    private

    def comment_params
      params.require(:comment).permit(:body, :user_id, :firstformmath_id)
    end

    def find_commentable
      @commentable = Comment.find_by_id(params[:comment_id]) if params[:comment_id]
      @commentable = Story.find_by_id(params[:story_id]) if params[:story_id]
    end

end

