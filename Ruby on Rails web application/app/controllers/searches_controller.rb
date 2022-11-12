class SearchesController < ApplicationController
    # https://youtu.be/eUtUquKc2qQ to continue
    def new 
        @search = Search.new

    end 

    def create 
        @search = Search.create(search_params)
        redirect_to @search
    end

end
