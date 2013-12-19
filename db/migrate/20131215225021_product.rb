class Product < ActiveRecord::Migration
  def change
    remove_column :products, :votes
    add_column :products, :image_url
  end
end
