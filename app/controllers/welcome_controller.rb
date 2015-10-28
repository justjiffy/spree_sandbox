class WelcomeController < Spree::BaseController

	def index
		@posts = Post.all.sort_by(&:created_at)
		render layout: '../views/spree/layouts/spree_application'
	end

end