class MoreController < Spree::BaseController

	def index
		render layout: '../views/spree/layouts/spree_application'
	end

	def bio
		render 'more/bio/index'
	end

	def press
		render 'more/press/index'
	end

	def stories
		render 'more/stories/index'
	end

end