class PresentsController < ApplicationController
    def new
        @present = Present.new
        @present.build_recipient
    end
    
    def index
        @presents = Present.all
    end
    
    def create
        @present = current_user.present.build(present_params)
        redirect_to new_present_path(@present)
    end

    def show
       
    end


    def present_params
        params.require(:present).permit(:name, :brand, :cost, :user_id, :recipient_id, recipient_attrifbutes: [:name, :email])
    end
end


#