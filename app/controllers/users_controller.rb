class UsersController < ApplicationController
    def index
        @user = User.all
    end 
    def show
        @user = User.find(params[:id])
        @city = City.find(@user.city_id)
    end
    def new
        @user = User.new
    end
    def create
        user_params = params.require(:user).permit(:email, :password)
        @user = User.new(user_params)
        if @user.save
            session[:auth] = {id: @user.id}
            redirect_to new_user_path, success: "Compte crée"
        else
            flash[:error]="Ton compte n'a pas pue être créé"
            render 'new'
        end
    end 
end
