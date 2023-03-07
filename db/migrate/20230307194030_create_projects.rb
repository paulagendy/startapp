class CreateProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.string :description
      t.string :industry
      t.references :spoken_language, null: true, foreign_key: true
      t.integer :number_of_developers

      t.timestamps
    end
  end
end
