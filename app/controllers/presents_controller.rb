class PresentsController < ApplicationController
    def new
        @present = Present.new
       #
    end
    
    def index
        @presents = Present.all
    end
    
    def create
        binding.pry
        @present = current_user.present.build(present_params)
        redirect_to new_present_path(@present)
    end

    def show
       
    end


    def present_params
        params.require(:present).permit(:name, :brand, :cost, :user_id, :recipient_id, recipient_attributes: [:name, :email])
    end
end


#