class AddPhotoToRestaurants < ActiveRecord::Migration[6.1]
  def change
    add_column :restaurants, :photo, :string
  end
end
