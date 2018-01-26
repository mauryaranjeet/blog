class ArticleImagesController < ApplicationController

	skip_before_action :verify_authenticity_token

	def create
		file = params[:file]
		article_image = ArticleImage.create(visual: file)
		render json: { location: article_image.visual.url }
	end

end
