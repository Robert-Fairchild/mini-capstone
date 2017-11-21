class Product < ApplicationRecord
  
  def is_discounted
    if price[1..-1].to_f < 50 # This code is price[1..-1] is to delete the first charachter in my price column(which is the $dollar sign so i can change it to an integer) (Any price less than 50 is discounted)
      return true
    else
      return false
    end 
  end 

  def tax
    price[1..-1].to_f * 0.09
  end

  def total
    price[1..-1].to_f + tax
  end

  def as_json
    {
      id: id,
      name: name,
      image: image,
      description: description,
      price: price,
      is_discounted: is_discounted,
      tax: tax,
      total: total,
      created_at: created_at,
      updated_at: updated_at
    }
  end 

end
