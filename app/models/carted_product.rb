class CartedProduct < ApplicationRecord
  belongs_to :user
  belongs_to :product
  belongs_to :order, optional: true

  def as_json
    {
      id: id,
      product: product.as_json,
      quantity: quantity
    }
  end

  def destroy
    carted_product = CartedProduct.find_by(id: params[:id])
    carted_product.status = "removed"
    carted_product.save
    render json: {status: "Carted product successfully removed"}
  end
end
