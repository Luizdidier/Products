module Api
	module V1
		class ProductsController < ApplicationController   
			def index
				product = Product.order('created_at DESC');
				render json: product, include: ['category', 'brand'], :methods => [:picture_url]
			end
			def destroy
				product = Product.all
				product = Product.where(id: params[:id]).first
				if product.destroy
					redirect_to products_url
				end
			end
		end
	end
end