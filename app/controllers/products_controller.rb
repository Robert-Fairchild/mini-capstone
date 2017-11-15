class ProductsController < ApplicationController

  def stick_method
    product = Product.first
    render json: product.as_json
  end 

  def elbow_method
    product = Product.second
    render json: product.as_json 
  end 

  def shins_method
    product = Product.third
    render json: product.as_json 
  end 

  def shirt_method
    product = Product.fourth 
    render json: product.as_json
  end

  def jock_method
    product = Product.fifth
    render json: product.as_json
  end 

  def skates_method
    product = Product.find_by(id: 6)
    render json: product.as_json
  end 

def all_method
  products = Product.all 
  render json: products.as_json
end 



end 






