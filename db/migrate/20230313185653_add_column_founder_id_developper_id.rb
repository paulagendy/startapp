class AddColumnFounderIdDevelopperId < ActiveRecord::Migration[7.0]
  def change
    add_reference :chatrooms, :founder, foreign_key: { to_table: :users }
    add_reference :chatrooms, :developer, foreign_key: { to_table: :users }
  end
end
