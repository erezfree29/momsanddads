class CreateTableSentMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :table_sent_messages do |t|
      t.string    :message
    end
  end
end
