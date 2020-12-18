class SessionsController < ApplicationController
    def home

    end
    
    def new
        #session.clear
        @user = User.new
    end

    def create
        @user = User.find_by(email: params[:user][:email])
        if @user.try(:authenticate, params[:user][:password])
            session[:user_id] = @user.id
            redirect_to user_recipients_path(@user)
        else
            flash[:error] = "Invalid log in information.Please enter valid email or password"
            redirect_to login_path
        end
    end


    def destroy
        session.delete(:user_id)
        redirect_to '/'
    end
end
