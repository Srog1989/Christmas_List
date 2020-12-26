class SessionsController < ApplicationController
    def home

    end

    def omniauth
            user = User.find_or_create_by(uid: auth['uid'], provider: auth['provider']) do |u|
            u.name = auth['info']['name']
            u.email = auth['info']['email']
            u.password = SecureRandom.hex(10)
        end
    
        if user.valid?
            session[:user_id] = user.id
            redirect_to user_presents_path(user)
        else
            flash[:error] = user.errors.full_messages.join(",")
            redirect_to login_path
        end
    end
    
    def new
        @user = User.new
    end

    def create
        @user = User.find_by(email: params[:user][:email])
        if @user.try(:authenticate, params[:user][:password])
            session[:user_id] = @user.id
            redirect_to user_presents_path(@user)
        else
            flash[:error] = "Invalid log in information. Please enter valid email or password."
            redirect_to login_path
        end
    end


    def destroy
        session.delete(:user_id)
        redirect_to '/'
    end

    private

    def auth
        request.env['omniauth.auth']
    end
end
