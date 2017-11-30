class Product < ApplicationRecord
  
  validates :name, presence: true
  validates :price, numericality: {greater_than_or_equal_to: 0}

  belongs_to :supplier
  # def supplier
  #   Supplier.find_by(id: self.supplier_id)
  # end

  has_many :images
  # def images
  #   Image.where(product_id: self.id)
  # 
  has_many :orders




  def in_stock
    true
  end 
  

  def is_discounted
    if price < 50 # This code is price[1..-1] is to delete the first charachter in my price column(which is the $dollar sign so i can change it to an integer) (Any price less than 50 is discounted)
      return true
    else
      return false
    end 
  end 

  def tax
    tax = price * 0.09
    return tax.round(2)
  end

  def total
    price + tax
  end

  def as_json
    {
      id: id,
      name: name,
      
      description: description,
      price: price,
      is_discounted: is_discounted,
      tax: tax,
      total: total,
      in_stock: in_stock,
      supplier: supplier.as_json,
      created_at: created_at,
      updated_at: updated_at
    }
  end 

end
