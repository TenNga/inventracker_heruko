class Api::V1::ProductsController < ApplicationController
    def index
        products = Product.all 
        render json: products
    end

    def show
        product = Product.find(params[:id])
        render json: product 
    end

    
    def create
        # byebug
        product = Product.create(product_params)
        render json: product
    end

    def destroy
        product = Product.find(params[:id])
        product.destroy 
    end

    private 

    def product_params
        params.permit(:name,:image,:quantity,:price,:description,:note,:folder_id,:qr_id)
    end
end
