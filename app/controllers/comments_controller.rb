class CommentsController < ApplicationController
    before_action :redirect_if_not_logged_in
    before_action :find_photo

    def index
        
    end

    def show 
        @comment = Comment.find(params[:id])
    end

    def new 
        @comment = @photo.comments.build
    end

    def create 
        @comment = @photo.comments.build(comment_params)
        @comment.user_id = session[:user_id]
        if @comment.save 
            redirect_to photo_comment_path(@photo, @comment)
        else 
            render :new 
        end
    end

    def edit 
        @comment = Comment.find_by(id: params[:id])
    end

    def update 
        @comment = Comment.find_by(id: params[:id])
        if @comment.update(comment_params)
            redirect_to photo_comment_path(@photo)
        else 
            render :edit 
        end
    end

    def destory 

    end

    private 

    def find_photo 
        @photo = Photo.find_by(id: params[:photo_id])
    end

    def comment_params 
        params.require(:comment).permit(:content, :user_id, :photo_id)
    end
end
