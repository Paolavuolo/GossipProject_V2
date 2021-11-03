
class GossipController < ApplicationController

    def index
        @gossips = Gossip.all
    end 

    def Show
        @gossip = Gossip.find(params[:id])
    end
    
    def new
    end

    def create
        binding.pry
        @gossip = Gossip.new( 'title' => params[:title], 'content' => params[:content])
        @gossip.user = anonymous_user
        if @gossip.save
            flash[:success] = "Ton Gossip a été créé"
            redirect_to root_path
        else
            flash[:error] = "Oups ton gossip n'a pu être créé"
            render 'new'
        end 
    end

end
