class ExperienceController < Spree::BaseController

	def index
		render layout: '../views/spree/layouts/spree_application'
	end

	def comics
		render 'experience/comics/index'
	end

	def game
		render 'experience/game/index'
	end

	def music
		render 'experience/music/index'
	end	
	
	def videos
		render 'experience/videos/index'
	end
end