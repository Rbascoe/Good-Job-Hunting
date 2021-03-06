class UsersController < ApplicationController

    before_action :find_user, only: [:show, :edit, :update]
    def index
    end

    def show
    end

    def new
        @user = User.new 
    end

    def create
        @user = User.new(user_params)
        if @user.valid?
            @user.save
            session[:user_id] = @user.id
            redirect_to user_path(@user) 
        else
            render :new
        end
    end

    def edit
    end

    def update
        @user.update(user_params)
        redirect_to user_path(@user)
    end

    def destroy 
        user = current_user.id
        User.destroy(user)
        session.clear 
        redirect_to root_path
    end

    private

    def find_user
        @user = User.find(params[:id])
    end


    def user_params
        params.require(:user).permit(:name, 
        :username, 
        :email, 
        :password,
        :gender,
        :age,
        :role,
        :user_ids => [])
    end
end
