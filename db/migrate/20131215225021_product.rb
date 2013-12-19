class Product < ActiveRecord::Migration
  def change
    remove_column :products, :votes
    remove_column :products, :guidance_id, :integer
    add_column :products, :image_url
  end
end
