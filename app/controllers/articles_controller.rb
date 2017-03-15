class ArticlesController < ApplicationController
    before_action :find_article, only: [:show, :edit , :update, :destroy]
    def index
      @articles = Article.all.order("created_at DESC").paginate(:page => params[:page], :per_page => 10)
    end
    def new
       @article = Article.new
    end
    def show
     
    end

    def edit

    end

    def update
      if @article.update(article_params)
        redirect_to article_path(@article)
      else
        render 'edit'
      end
    end

    def destroy

    end
    def create
      @article = Article.new(article_params)

      if @article.save
        redirect_to root_path
      else
        render 'new'
      end  
    end

    private
        def article_params
          params.require(:article).permit(:headline,:lead,:body)
        end

        def find_article
          @article = Article.find(params[:id])
        end

end
