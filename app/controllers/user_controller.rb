class UserController < ApplicationController
    def index
        @user = User.all
    end 
    def Show_user
        @user = User.find(params[:id])
    end
end
