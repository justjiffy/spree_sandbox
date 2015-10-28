class WelcomeController < Spree::BaseController
 before_action :check_authorization, :except => [:index, :show]

	def index
		@posts = Post.all.sort_by(&:created_at)
		
		render layout: '../views/spree/layouts/spree_application'
	end

	def show
		@posts = Post.all.sort_by(&:created_at)
		# @post = Post.find(params[:id])
	end

end