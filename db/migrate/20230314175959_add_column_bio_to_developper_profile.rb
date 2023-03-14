class AddColumnBioToDevelopperProfile < ActiveRecord::Migration[7.0]
  def change
    add_column :developer_profiles, :bio, :text
  end
end
