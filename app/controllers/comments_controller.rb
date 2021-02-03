class CommentsController < ApplicationController


    def new 
        @photo = Photo.find_by(id: params[:photo_id])
        @comment = @photo.comments.build
    end

    def create 
        
    end
end
