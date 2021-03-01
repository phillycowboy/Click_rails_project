class HashtagsController < ApplicationController

    
    def index 
        @hashtags = Hashtag.all 
    end

    def show 
        @hashtag = Hashtag.find_by_id(params[:id])
        @photos = @hashtag.photos 
        render 'photos/index'
    end
    
    def new 
    @hashtag = Hashtag.new 
    end

    def create 
    
    end

    private 

    def hashtag_params
        params.require(:hashtag).permit(:tag)
    end
end
