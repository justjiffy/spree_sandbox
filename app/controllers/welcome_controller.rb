class WelcomeController < ApplicationController

	def index
		@products = Spree_products.all
	end

end