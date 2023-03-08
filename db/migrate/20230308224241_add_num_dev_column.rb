class AddNumDevColumn < ActiveRecord::Migration[7.0]
  def change
    add_column :projects, :number_of_developpers, :integer
  end
end
