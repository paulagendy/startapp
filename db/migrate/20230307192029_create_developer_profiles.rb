class CreateDeveloperProfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :developer_profiles do |t|
      t.integer :years_of_experience
      t.references :user, null: false, foreign_key: true
      t.string :school
      t.string :degree

      t.timestamps
    end
  end
end
