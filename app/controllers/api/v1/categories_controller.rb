module Api
	module V1
		class CategoriesController < ApplicationController   
			def index
				categories = Category.order('created_at DESC');
				render json: {status: 'SUCCESS', message:'Artigos carregados', data:categories, }, :methods => [:picture_url] ,status: :ok	
			end
		end
	end
end