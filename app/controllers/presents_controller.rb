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
        # binding.pry
        # @present = Present.new(present_params)
        @present = current_user.presents.build(present_params)
        if @present.save
            redirect_to user_present_path(current_user, @present)
        else
            render :new
        end
        #redirect_to new_present_path(@present)
    end

    def show
       @present = Present.find_by(id: params[:id])
    end

    private


    def present_params
        params.require(:present).permit(:name, :brand, :cost, :category,  :user_id, :recipient_id, recipient_attributes: [:email, :name])
    end
end


#