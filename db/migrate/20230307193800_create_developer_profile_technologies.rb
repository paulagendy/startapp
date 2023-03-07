class CreateDeveloperProfileTechnologies < ActiveRecord::Migration[7.0]
  def change
    create_table :developer_profile_technologies do |t|
      t.references :developer_profile, null: false, foreign_key: true
      t.references :technology, null: false, foreign_key: true

      t.timestamps
    end
  end
end
