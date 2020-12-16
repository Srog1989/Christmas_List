class RecipientsController < ApplicationController
    def index
        @user = User.find(params[:user_id])
        @recipients = @user.recipients
    end
    
    def new
        @recipient = Recipient.new
    end

    def create
        @recipient = Recipient.create(recipient_params)
        return redirect_to new_recipeint_path unless @recipeient.save
            session[:user_id] = @user.id
        redirect_to user_path(@user)
    end

    def show
       
        @recipient = Recipient.find_by(id: params[:id])
    end
end
