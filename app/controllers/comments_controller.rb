class CommentsController < ApplicationController


    def new 
        @photo = Photo.find_by(id: params[:photo_id])
        @comment = @photo.comments.build
    end

    def create 
        @comment = Comment.new(comment_params)
        if @comment.save 
            redirect_to photo_comments_path(params[:photo_id], @comment)
        else 
            render :new 
        end
    end

    private 

    def comment_params 
        params.require(:comment).permit(:content, :user_id, :photo_id)
    end
end
