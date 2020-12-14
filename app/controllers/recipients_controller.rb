class RecipientsController < ApplicationController
    def new
        @recipient = Recipient.new
    end

    def create
        @recipient = Recipient.create(recipient_params)
        return redirect_to new_recipeint_path unless @recipeient.save
            session[:user_id] = @user.id
        redirect_to user_path(@user)
    end
end
