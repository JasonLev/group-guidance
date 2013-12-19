class CreateGuidances < ActiveRecord::Migration
  def change
    create_table :guidances do |t|
      t.string :comment
      t.boolean :vote
      t.integer :adviser_id
      t.integer :product_id

      t.timestamps
    end
  end
end
