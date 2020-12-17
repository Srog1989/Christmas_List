class ApplicationController < ActionController::Base
    helpers do
        
        def current_user
            binding.pry
            User.find_by(id: session[:user_id])
        end
    end
end