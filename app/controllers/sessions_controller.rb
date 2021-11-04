class SessionsController < ApplicationController

    skip_before_action :only_signed_in, only: [:new, :create] #les gens connectés ne peuvent pas créer de session
    def new
        @user = User.new
    end 
    def create
        #cherche si l'utilisateur existe dans la base via son mail
     @user = User.find_by(email: @user.email)
     #on vérifie si l'utilisateur existe et si son mdp est correct
     if @user && @user.authenticate(params[:password])
        session[:user_id] = user.id 
        redirect_to user_path 
     else 
        #on indique le message d'erreur si la connexion ne marche pas 
        flash.new[:danger]='Invalid email/password combination'
        render 'new'
     end 
    end 
    def destroy
        session.delete(:user_id)
    end 
end
