class V1::OrdersController < ApplicationController

  def create
    def create

      product = Product.new(
        user_id: current_user.id,
        product_id: params[:product_id],
        quantity: params[:quantity],
        subtotal: 0,
        tax: 0,
        total: 0
     )
      if product.save
        render json: product.as_json
    else
      render json: {errors: product.errors.full_messages}, status: :bad_request
      end
    end
    
  end
end 