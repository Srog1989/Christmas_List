class PresentsController < ApplicationController
    def new
        @user = User.find(params[:user_id])
        @present = @user.presents.build
    end
    
    def index
        @presents = Present.all
        @recipients = current_user.recipients
    end
    
    def create
        #binding.pry
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