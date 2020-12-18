class SessionsController < ApplicationController
    def home
        
    end
    
    def new
        @user = User.new
    end

    def create
        
        user = User.find_by(name: params[:user][:name])
        authenticated = user.try(:authenticate, params[:user][:password])
        return redirect_to root_path unless authenticated
        #binding.pry
        session[:user_id] = user.id
        redirect_to user_path(user)
        end


    def destroy
        session.delete(:user_id)
        redirect_to '/'
    end
end
