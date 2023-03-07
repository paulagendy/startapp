class CreateOffers < ActiveRecord::Migration[7.0]
  def change
    create_table :offers do |t|
      t.references :project, null: false, foreign_key: true
      t.references :developer_profile, null: false, foreign_key: true
      t.integer :hourly_rate
      t.integer :status, null: false, default:0

      t.timestamps
    end
  end
end
