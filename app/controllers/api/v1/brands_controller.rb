module Api
	module V1
		class BrandsController < ApplicationController   
			def index
				brands = Brand.order('created_at DESC');
				render json: {status: 'SUCCESS', message:'Objetos carregados', data:brands, }, :methods => [:picture_url] ,status: :ok	
			end
			def destroy
				brand = Brand.all
				brand = Brand.where(id: params[:id]).first
				if brand.destroy
					redirect_to brands_url
				end
			end
		end
	end
end