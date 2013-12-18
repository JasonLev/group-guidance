class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.integer :user_id
      t.string :asin
      t.string :amazon_ref
      t.string :amazon_img
      t.string :img_height
      t.string :img_width
      t.string :price
      t.text   :description
      t.integer :votes

      t.timestamps
    end
  end
end
