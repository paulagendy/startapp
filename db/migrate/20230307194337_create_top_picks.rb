class CreateTopPicks < ActiveRecord::Migration[7.0]
  def change
    create_table :top_picks do |t|
      t.references :project, null: false, foreign_key: true
      t.references :developer_profile, null: false, foreign_key: true

      t.timestamps
    end
  end
end
