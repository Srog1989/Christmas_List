class RecipientsController < ApplicationController
    before_action :verified_user

    def index
        @recipients = current_user.recipients.order_recipients_by
    end
    
    def new
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
        @recipient = Recipient.find_by(id: params[:id])
    end

    def edit
        @recipient = Recipient.find(params[:id]) 
    end

    def update
            @recipient = Recipient.find(params[:id])
            updated = @recipient.update(recipient_params)
        if updated
            redirect_to recipient_path(@recipient)
        else
            render :edit
        end
    end

    private

    def recipient_params
        params.require(:recipient).permit(:name, :email, :address, :favorite_color)
    end
end
