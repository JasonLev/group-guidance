class CreateGuidances < ActiveRecord::Migration
  def change
    create_table :guidances do |t|
      t.string :comment
      t.string :name
      t.string :email
      t.boolean :vote

      t.timestamps
    end
  end
end
