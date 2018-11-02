class ProductsController < ApplicationController

	def new
		@product = Product.new 
		@product.build_walk
	end

	def create
		Product.create(product_params)
		redirect_to products_path
	end

	def index
		@products = Product.all
	end
		
	def edit
		@product = Product.find(params[:id])
	end

	def update
		@product = Product.find(params[:id])
		@product.update_attributes(product_params)

		redirect_to products_path
	end

	private

	def product_params
		params.require(:product).permit(
			:name,
			:comissionable,
			walk_attributes: [:list_group, :id]
		)
	end
end