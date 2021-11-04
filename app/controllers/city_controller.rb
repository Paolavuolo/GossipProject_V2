class CityController < ApplicationController
    def index
        @city = City.all
    end 

    def show
        @user = User.find(params[:id])
        @city = City.find_by(id: @user.city_id)
    end 
end
