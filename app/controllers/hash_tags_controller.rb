class HashTagsController < ApplicationController

    def new 
    @hash_tag = HashTag.new 
    end

    def create 
    
    end

    private 

    def hash_tag_params
        params.require(:hash_tag).permit(:tag)
    end
end
