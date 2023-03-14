class AvatarToDeveloperProfile < ActiveRecord::Migration[7.0]
  def change
    add_column :developer_profiles, :avatar, :string
  end
end
