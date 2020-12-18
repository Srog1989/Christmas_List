class RecipientsController < ApplicationController
    def index
        #binding.pry
        @recipients = current_user.recipients
    end
    
    def new
        #binding.pry
        @user = current_user
        @recipient = Recipient.new
    end

    def create
      #binding.pry
       #try define current_user helper and call here
       
        @recipient = Recipient.create(recipient_params)
        return redirect_to new_recipient_path unless @recipient.save
        redirect_to recipient_path(@recipient)
    end

    def show
        @recipient = Recipient.find_by(id: params[:id])
    end

    private

    def recipient_params
        params.require(:recipient).permit(:name, :email)
    end
end
