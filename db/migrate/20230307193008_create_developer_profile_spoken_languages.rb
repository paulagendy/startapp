class CreateDeveloperProfileSpokenLanguages < ActiveRecord::Migration[7.0]
  def change
    create_table :developer_profile_spoken_languages do |t|
      t.references :spoken_language, null: false, foreign_key: true, index: {name: :index_developer_languages_on_developer_id}
      t.references :developer_profile, null: false, foreign_key: true, index: {name: :index_developer_profile_on_developer_id}

      t.timestamps
    end
  end
end
