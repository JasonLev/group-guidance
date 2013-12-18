class Product < ActiveRecord::Migration
  def change
    remove_column :products, :votes
    add_column :products, :guidance_id, :integer
  end
end
