class CreateTableReceivedMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :table_received_messages do |t|
      t.string    :message

    end
  end
end
