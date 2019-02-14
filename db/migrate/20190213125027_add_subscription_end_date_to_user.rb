class AddSubscriptionEndDateToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :subscription_end_date, :date
  end
end
