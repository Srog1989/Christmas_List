class PresentsController < ApplicationController
    def new
        @user = current_user
        @present = @user.presents.build
    end
    
    def index
        @presents = Present.all
        @recipients = current_user.recipients
    end
    
    def create
        # binding.pry
        @present = current_user.presents.build(present_params)
        if @present.save
            redirect_to user_present_path(current_user, @present)
        else
            render :new
        end
    end

    def show
       @present = Present.find_by(id: params[:id])
    end

    def destroy
        Present.find(params[:id]).destroy
        redirect_to user_presents_path(current_user)
    end

    def edit
        @present = Present.find(params[:id]) 
    end

      def update 
        # binding.pry
        @present = Present.find(params[:id])
        updated = @present.update(present_params)
        if updated
          redirect_to present_path(@present)
        else
          render :edit
        end
      end

    private


    def present_params
        params.require(:present).permit(:name, :brand, :cost, :category,  :user_id, :recipient_id, recipient_attributes: [:email, :name, :address, :favorite_color, :id])
    end
end


#