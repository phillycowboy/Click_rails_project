class PhotosController < ApplicationController

    before_action :redirect_if_not_logged_in
    before_action :owns_photo?, only: [:edit, :update, :destroy]
    before_action :photo_find, only: [:show, :edit, :update, :destroy]

    def index 
        @photos = Photo.search(params[:search]).reverse
    end
    
    def show 
        # @photo = Photo.find_by(id: params[:id])
    end
    
    def new 
        @photo = Photo.new
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
        # @photo = Photo.find_by(id: params[:id])
        # @user = User.find_by(id: params[:id])
    end

    def update 
        # @photo = Photo.find_by(id: params[:id])
        if @photo.update(photo_params)
            redirect_to photo_path(@photo)
        else 
            render :edit 
        end
    end

    def destroy 
        # @photo = Photo.find(params[:id])
        @photo.destroy
        redirect_to photos_path
    end

    private 

    def owns_photo? 
        # @photo = Photo.find_by(id: params[:id])
        photo_find
        if @photo.user != current_user
            redirect_to photo_path(@photo) 
            flash[:message] = "You do not have permission to edit this photo!"
        end
    end

    def photo_find 
        @photo = Photo.find_by(id: params[:id])
     end

    def photo_params 
        params.require(:photo).permit(:image, :description)
    end
end
