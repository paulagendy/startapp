class AddColumToDeveloperProfile < ActiveRecord::Migration[7.0]
  def change
    # add_column :restaurants, :rating, :integer, default: 0, null: false
    add_column :developer_profiles, :description, :string
  end
end
