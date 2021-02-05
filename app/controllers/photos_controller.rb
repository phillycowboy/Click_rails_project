class PhotosController < ApplicationController

    before_action :redirect_if_not_logged_in
    before_action :validate_user, only: [:edit, :update, :destroy]

    def index 
        @photos = Photo.all.reverse
    end
    
    def show 
        @photo = Photo.find_by(id: params[:id])
        @user = @photo.users.first
        raise @photo.users.inspect  
        
    end
    
    def new 
        @photo = current_user.photos.build 
    end

    def create 
        @photo = current_user.photos.build(photo_params)
        if @photo.save 
            redirect_to photos_path
        else 
            render :new
        end
    end


    def edit 
        @photo = Photo.find_by(id: params[:id])
    end

    def update 
        @photo = Photo.find_by(id: params[:id])
        if @photo.update(photo_params)
            redirect_to photo_path(@photo)
        else 
            render :edit 
        end
    end

    def destroy 
        @photo = Photo.find(params[:id])
        @photo.destroy
        redirect_to photos_path
    end

    private 

    def photo_params 
        params.require(:photo).permit(:image, :description)
    end
end
