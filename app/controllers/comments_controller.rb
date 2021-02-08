class CommentsController < ApplicationController
    before_action :redirect_if_not_logged_in
    before_action :owns_comment?, only: [:edit, :update, :destroy]
    before_action :photo_find 
    before_action :find_comment, only: [:show, :edit, :update, :destroy]



    def show 
        # @comment = Comment.find(params[:id])
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
        # @photo = Photo.find_by(id: params[:photo_id])
        # @comment = Comment.find_by(id: params[:id])
    end

    def update 
        # @comment = Comment.find_by(id: params[:id])
        if @comment.update(comment_params)
            redirect_to photo_path(@comment.photo_id)
        else 
            render :edit 
        end
    end

    def destroy 
        # @comment = Comment.find_by(id: params[:id])
        @comment.destroy 
        redirect_to photo_path(@comment.photo_id)
    end

    private 
    def owns_comment?
        # @comment = Comment.find_by(id: params[:id])
        find_comment
        if @comment.user != current_user
            redirect_to photo_path(@comment.photo_id)
            flash[:message] = "You do not have permission to edit this comment!"
        end
    end
    
    def find_comment 
        @comment = Comment.find_by(id: params[:id])
    end

    def photo_find 
        @photo = Photo.find_by(id: params[:photo_id])
     end

    # def find_photo 
    #     @photo = Photo.find_by(id: params[:photo_id])
    # end

    def comment_params 
        params.require(:comment).permit(:content, :user_id, :photo_id, :hashtag_id)
    end
end
