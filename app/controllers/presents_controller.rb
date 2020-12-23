class PresentsController < ApplicationController
    before_action :verified_user
    before_action :set_present, only: [:show, :edit, :update, :destroy]
    before_action :redirect_if_not_authorized, only: [:edit, :update, :destroy]

    def new
        @user = current_user
        @present = @user.presents.build
    end
    
    def index
        @presents = Present.all
        @recipients = current_user.recipients.order_recipients_by
    end
    
    def create
        @present = current_user.presents.build(present_params)
        if @present.save
            redirect_to user_present_path(current_user, @present)
        else
            render :new
        end
    end

    def show
    end

    def destroy
       @present.destroy
        redirect_to user_presents_path(current_user)
    end

    def edit
    end

      def update 
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

    def set_present
        @present = Present.find_by(id: params[:id])
        if !@present 
            flash[:message] = "Present was not found."
             redirect_to user_presents_path(@present)
        end
    end

    def redirect_if_not_authorized
        redirect_to user_presents_path(@present) if @present.user != current_user
    end
end


