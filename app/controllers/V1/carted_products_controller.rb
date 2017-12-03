class V1::CartedProductsController < ApplicationController


  def index
    carted_products = current_user.carted_products 
    render json: carted_products.as_json
  end






  def create 
    carted_product = CartedProduct.new(
      product_id: params[:product_id],
      quantity: params[:quantity],
      status: "Carted",
      user_id: current_user.id
    )
    if carted_product.save
      render json: carted_product.as_json
         else
           render json: {errors: carted_product.errors.full_messages}, status: :bad_request
    end
  end
end
