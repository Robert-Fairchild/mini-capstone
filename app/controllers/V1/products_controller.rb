
class V1::ProductsController < ApplicationController
  before_action :authenticate_admin, except: [:index, :show]

  def index
    products = Product.all.order(:id => :asc)

    user_search_terms = params[:search]
    if user_search_terms
      products = products.where("name ILIKE ?", "%" + user_search_terms + "%")
    end

    should_i_sort_by_price = params[:sort_by_price]
    if should_i_sort_by_price
      products = Product.all.order(:price => :asc)
    end

    category_id = params[:category_search]
    if category_id 
      category = Category.find_by(id: category_id)
      products = category.products
    end

    render json: products.as_json
  end

  def create
    if current_user && current_user.admin
      product = Product.new(
        name: params[:name],
        price: params[:price],
        description: params[:description],
        supplier_id: 1
      )
      if product.save
        render json: product.as_json
      else
        render json: {errors: product.errors.full_messages}, status: :bad_request
      end
    else
      render json: {errors: "Not authorized!"}, status: :unauthorized
    end
  end

  def show
    product = Product.find_by(id: params[:id])
    render json: product.as_json
  end

  def update
    product = Product.find_by(id: params[:id])
    product.name = params[:name] || product.name
    product.price = params[:price] || product.price
    product.image = params[:image] || product.image
    product.description = params[:description] || product.description
    product.save
    render json: product.as_json
  end

  def destroy
    product = Product.find_by(id: params[:id])
    product.destroy
    render json: {message: "Product successfully destroyed!"}
  end
end