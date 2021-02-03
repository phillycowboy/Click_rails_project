class PhotosController < ApplicationController

    before_action :redirect_if_not_logged_in

    def index 
        @photos = Photo.all.reverse
    end

    def new 
        @photo = Photo.new 
    end

    def create 
        @photo = Photo.new(photo_params)
        if @photo.save 
            redirect_to photos_path
        else 
            render :new
        end
    end

    def show 
        @photo = Photo.find_by(id: params[:id])
    end

    def edit 

    end

    def update 

    end

    def destroy 

    end

    private 

    def photo_params 
        params.require(:photo).permit(:image, :description)
    end
end
