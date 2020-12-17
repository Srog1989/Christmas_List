class RecipientsController < ApplicationController
    def index
        @user = User.find(params[:user_id])
        @recipients = @user.recipients
    end
    
    def new
        @user = User.find(params[:user_id])
        @recipient = Recipient.new
    end

    def create
      #binding.pry
       #try define current_user helper and call here
        @user = User.find_by(id: session[:user_id])
        @user.Recipient.create(recipient_params)
        return redirect_to new_recipient_path unless @recipient.save
        redirect_to user_recipients_path(@user)
    end

    def show
       
        @recipient = Recipient.find_by(id: params[:id])
    end

    private

    def recipient_params
        params.require(:recipient).permit(:name, :email)
    end
end
