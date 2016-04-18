class CalendarController < Spree::BaseController

	def index
    @posts = Post.all.sort_by(&:id).reverse
		render layout: '../views/spree/layouts/spree_application'
	end

end
