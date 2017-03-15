class ComentariosController < ApplicationController
    before_action :find_article


    def new
      @comentario =Comentario.new
    end

    def create
      @comentario = Comentario.new(comentario_params)
      @comentario.article_id = @article.id

      if @comentario.save
        redirect_to article_path(@article)
      else
        alert
        render 'new' 
      end
    end 
    

    private

        def comentario_params
          params.require(:comentario).permit(:name,:content)   
        end

        def find_article
          @article = Article.find(params[:article_id])  
        end
end

      


