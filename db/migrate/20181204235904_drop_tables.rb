class DropTables < ActiveRecord::Migration[5.2]
  def change
    drop_table :table_received_messages
    drop_table :table_sent_messages
end
end
