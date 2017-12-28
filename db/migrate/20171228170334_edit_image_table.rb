class EditImageTable < ActiveRecord::Migration[5.1]
  def change
    add_column :images, :product_id, :integer
    rename_column :images, :ur, :image_url
  end
end
