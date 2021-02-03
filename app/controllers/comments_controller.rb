class CommentsController < ApplicationController

    def index

    end

    def show 
        @photo = Photo.find(params[:photo_id])
        @comment = Comment.find(params[:id])
    end
    def new 
        @photo = Photo.find_by(id: params[:photo_id])
        @comment = @photo.comments.build
    end

    def create 
        @comment = Comment.new(comment_params)
        @comment.user_id = session[:user_id]
        @comment.photo_id = params[:photo_id]
        if @comment.save 
            redirect_to photo_comment_path(params[:photo_id], @comment)
        else 
            render :new 
        end
    end

    private 

    def comment_params 
        params.require(:comment).permit(:content, :user_id, :photo_id)
    end
end
