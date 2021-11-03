class WelcomeController < ApplicationController
  def first_name
    @name = params[:name]
  end
end
