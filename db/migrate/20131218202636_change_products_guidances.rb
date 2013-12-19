class ChangeProductsGuidances < ActiveRecord::Migration
  def change
    add_column :products, :image_url, :string, default: "/assets/default_product.png"
    add_column :guidances, :adviser_id, :integer
    add_column :guidances, :product_id, :integer
    remove_column :products, :guidance_id
    remove_column :guidances, :name
    remove_column :guidances, :email
  end
end
