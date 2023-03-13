class AddColumnFounderIdDevelopperId < ActiveRecord::Migration[7.0]
  def change
    add_column :chatrooms, :founder_id, :bigint
    add_column :chatrooms, :developer_id, :bigint
  end
end
