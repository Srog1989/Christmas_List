class RecipientsController < ApplicationController
    before_action :verified_user
    before_action :set_recipient, only: [:show, :edit, :update, :destroy]
    # before_action :redirect_if_not_authorized, only: [:edit, :update, :destroy]

    def index
        @recipients = Recipient.order_recipients_by
    end
    
    def new
        # binding.pry
        @user = current_user
        @recipient = @user.recipients.build
    end

    def create
        @recipient = Recipient.create(recipient_params)
        if @recipient.save
            redirect_to recipient_path(@recipient)
        else
            render :new
        end
    end

    def show
    end

    def edit
    end

    def update
            updated = @recipient.update(recipient_params)
        if updated
            redirect_to recipient_path(@recipient)
        else
            render :edit
        end
    end

    def destroy
        @recipient.destroy
        redirect_to recipient_path

    end

    private

    def recipient_params
        params.require(:recipient).permit(:name, :email, :address, :favorite_color)
    end

    def set_recipient
        @recipient = Recipient.find_by(id: params[:id])
        if !@recipient
            flash[:message] = "Recipient was not found."
             redirect_to recipients_path
        end
    end

    # def redirect_if_not_authorized
    #     redirect_to recipients_path if @recipient.user != current_user
    # end
end
