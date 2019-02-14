class RemoveDatesFromSubscriptions < ActiveRecord::Migration[5.2]
  def change
    remove_column :subscriptions, :startdate
    remove_column :subscriptions, :enddate
  end
end
