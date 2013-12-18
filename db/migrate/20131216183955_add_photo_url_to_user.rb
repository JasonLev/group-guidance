class AddPhotoUrlToUser < ActiveRecord::Migration
  def change
    add_column :users, :photo_url, :string, default: "/assets/default_profile_image.png"
  end
end
