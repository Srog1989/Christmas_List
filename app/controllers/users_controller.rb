class UsersController < ApplicationController
    def home

    end

    def new
        @user = User.new
    end

    def show
        @user = user.find_by(id: params[:id])
    end

    def create
        @user = User.create(user_params)
        return redirect_to new_users_path unless @user.save
            session[:user_id] = @user.id
        redirect_to user_path(@user)
    end


    private

    def user_params
        params.require(:user).permit(:name, :email, :password)
    end
end
