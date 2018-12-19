class AddTimeOfMessageToMessage < ActiveRecord::Migration[5.2]
  def change
    add_column :messages, :date, :date
    add_column :messages, :time, :time
  end
end
