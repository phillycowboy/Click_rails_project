class HashtagsController < ApplicationController

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
