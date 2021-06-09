class RemoveUserIdToProfiles < ActiveRecord::Migration[6.1]
  def change
    remove_column :profiles, :user_id
  end
end
