class HomesController < ApplicationController

	def index
		@articles = Article.page
	end
	
end
