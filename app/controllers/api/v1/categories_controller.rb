module Api
	module V1
		class CategoriesController < ApplicationController   
			def index
				categories = Category.order('created_at DESC');
				render json: {status: 'SUCCESS', message:'Objetos carregados', data:categories, }, :methods => [:picture_url] ,status: :ok	
			end
			def destroy
				categories = Category.all
				categories = Category.where(id: params[:id]).first
				if categories.destroy
					redirect_to categories_url
				end
			end
		end
	end
end