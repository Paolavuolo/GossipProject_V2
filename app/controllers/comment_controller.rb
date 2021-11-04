class CommentController < ApplicationController

    before_action :set_comment, only: [:show, :edit, :update, :destroy]

    def index
        @comment = Comment.all 
    end 

    def show
        @author = User.find_by(id: @comment.user_id)
    end

    def new
        @comment = Comment.new
    end 

    def create
        @comment = Comment.new(comment_params)
        if @comment.save
            redirect_to root_path, sucess:"commentaire créé"
        else
            flash[:error] = "Oups ton comment n'a pas pu être créé"
            render 'new'
        end 
    end 

    def edit
    end

    def update
        if @comment.update(comment_params)
            redirect_to comment_path, sucess:"Commentaire modifié"
        else
            render :edit
        end 
    end

    def destroy
        @comment.destroy
        redirect_to root_path, success:"commentaire supprimé avec succès"
    end 

    def set_comment
        @comment = Comment.find(params[:id])
    end

    private

    def comment_params
        comment_params = params.require(:comment).permit(:content)
    end
end
