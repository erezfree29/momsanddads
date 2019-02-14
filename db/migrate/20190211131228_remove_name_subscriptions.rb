class RemoveNameSubscriptions < ActiveRecord::Migration[5.2]
  def change
    remove_column :subscriptions, :name
  end
end
