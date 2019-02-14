class RemoveScriptionSku < ActiveRecord::Migration[5.2]
  def change
    remove_column :orders, :subscription_sku
  end
end
