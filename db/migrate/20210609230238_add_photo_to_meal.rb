class AddPhotoToMeal < ActiveRecord::Migration[6.1]
  def change
    add_column :meals, :photo, :string
  end
end
