class UsersController < ApplicationController
    def show
        @user = User.find(params[:id])
    end

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
            flash[:success] = "Welcome to the Shopping Cart!"
            redirect_to root_url
        else
            render 'new'
        end
    end

    private
    def user_params
        params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
end
