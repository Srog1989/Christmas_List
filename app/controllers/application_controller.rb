class ApplicationController < ActionController::Base
    helper_method :current_user

    private
        
    def current_user
        User.find_by(id: session[:user_id])
    end

    def verified_user
        redirect_to '/' unless user_is_authenticated
    end

    def user_is_authenticated
        !!current_user
    end

end