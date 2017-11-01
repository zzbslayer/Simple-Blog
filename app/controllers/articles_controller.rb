class ArticlesController < ApplicationController
	def new
	end

	def index
		@article = Article.all
	end

	def create
		@article = Article.new(params.require(:article).permit(:title, :content))

		@article.save;
		redirect_to @article
  	end

  	def show
  		@article =Article.find(params[:id])
  	end
end
