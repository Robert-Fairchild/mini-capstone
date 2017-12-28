class Image < ApplicationRecord
  belongs_to :product

  def images
    Image.where(id: self.id)

  end


  def as_json
    {
      images: image_url,
      product_id: id
    }
  end
end
