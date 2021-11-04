
class GossipsController < ApplicationController

    before_action :set_gossip, only: [:update, :edit, :show, :destroy]

    def index
        @gossips = Gossip.all
    end 

    def show
        @city = City.find(@gossip.user.city_id)
        @comment = Comment.find_by(id: @gossip.id)
    end

    def new
        @gossip = Gossip.new
    end 

    def create
        @gossip = Gossip.new(gossip_params)
        @gossip.user = current_user #lien entre le potin et l'utilisateur connecté (voir le code complet dans app/helper/SessionHelper)
        if @gossip.valid? 
            flash[:success] = "Ton Gossip a été créé"
            redirect_to root_path
        else
            flash[:error] = "Oups ton gossip n'a pu être créé"
            render 'new'
        end 
    end

    def edit 
    end 

    def update
        if @gossip.update(gossip_params)
            flash[:success]="commentaire modifié"
            redirect_to @gossip   
        else
            render :edit        
        end
    end

    def destroy
        @gossip.destroy

        redirect_to root_path
    end 

    def set_gossip
        @gossip = Gossip.find(params[:id])
    end 

    private

    def gossip_params
        params.require(:gossip).permit(:title, :content)
    end 
end
