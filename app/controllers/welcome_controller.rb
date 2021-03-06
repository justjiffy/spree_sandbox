class WelcomeController < Spree::BaseController
 before_action :check_logged_in, :except => [:index, :show]

	def index
		@posts = Post.all.sort_by(&:id).reverse
		render layout: '../views/spree/layouts/spree_application'
	end

	def show
		@posts = Post.all.sort_by(&:created_at)
		@post = Post.find(params[:id])
	end

	def new
		@posts = Post.all 
		render '../views/spree/admin/homepage/index', layout: '../views/spree/layouts/admin'
	end

	def new_post
		@post = Post.new
		render layout: '../views/spree/layouts/admin'
	end

	def create
		@post = Post.create(post_params)
		if @post.save
			redirect_to main_app.edit_homepage_path
		else redirect_to main_app.root_path
		end
	end

	def edit
		@edit_post = Post.find(params[:id])
		render layout: '../views/spree/layouts/admin'
	end

	def update
		@post = Post.find(params[:id])
		if @post.update_attributes(post_params)
			redirect_to main_app.edit_homepage_path
		else
			render :edit
		end
	end

	def all
		@posts = Post.all
	end

	def destroy
		@post = Post.find(params[:id])
		@post.destroy
		redirect_to main_app.edit_homepage_path
	end

			private

			def post_params
				params.require(:post).permit(:user_id, :title, :body, :img, :tags)
			end

	end

