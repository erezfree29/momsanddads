class AddSubscriptionToOrder < ActiveRecord::Migration[5.2]
  def change
    add_reference :orders, :subscription, foreign_key: true
  end
end
