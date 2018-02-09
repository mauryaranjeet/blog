class ArticlesController < ApplicationController

	def show 
		
	end

	def index
		respond_to do |format|
			@articles = Article.page(params[:page])
			format.js
		end
	end

	def show
		@article = Article.friendly.find(params[:id])
	end
end
