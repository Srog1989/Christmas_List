class PresentsController < ApplicationController
    def new
        @present = Present.new
    end
    
    def index
        @presents = Present.all
    end
    
    # def create
    #     # byebug
    #     @user = User.find(params[:id])
    #     @present = Present.create(present_params)
    #     redirect_to new_present_path(@present)
    # end

    def show
       
    end


    # def present_params
    #     params.require(:present).permit(:name, :brand, :cost, :user_id, :recipient_id)
    # end
end


#