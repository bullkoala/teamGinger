#Controller for the Articles view(?)
class ArticlesController < ApplicationController
	#Standard CRUD actions in the following order

	def index
		@articles = Article.all
	end #index
		
	#Article.find locates the article in which we're intersted
	#Passing it params[:id] gets the id paramater from the request
	#Instance variable @article holds a reference to the article object
	#Rails passes all instance variables to the view
	def show
		@article = Article.find(params[:id])
	end #show

	def new
		@article = Article.new
	end #new

	def edit
	end #edit

	def create
		@article = Article.new(article_params)
		
		if @article.save
			redirect_to @article
		else
			render 'new'
		end #fi
	end #create

	def update
	end #update

	def destroy
	end #destroy
	
	private
	def article_params
		params.require(:article).permit(:title, :text)
	end #article_params

end #ArticleController
