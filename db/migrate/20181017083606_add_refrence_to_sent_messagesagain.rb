class AddRefrenceToSentMessagesagain < ActiveRecord::Migration[5.2]
  def change
    add_reference :table_received_messages, :parents, foreign_key: true
    add_reference :table_sent_messages, :parents, foreign_key: true
  end
end
