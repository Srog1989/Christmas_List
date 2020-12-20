class RecipientsController < ApplicationController
    def index
        #binding.pry
        @recipients = current_user.recipients
    end
    
    def new
        #binding.pry
        @user = current_user
        @recipient = @user.recipients.build
    end

    def create
      #binding.pry
       
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

    private

    def recipient_params
        params.require(:recipient).permit(:name, :email)
    end
end
