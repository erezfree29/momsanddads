class RemovePrice < ActiveRecord::Migration[5.2]
  def change
    remove_column :subscriptions, :price_cents
  end
end
