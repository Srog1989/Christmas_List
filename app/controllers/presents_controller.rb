class PresentsController < ApplicationController
    def new
        @present = Present.new
    end
    
    def index
        @presents = Present.all
    end

    def show
       
    end
end


#