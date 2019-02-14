class RemoveSku < ActiveRecord::Migration[5.2]
  def change
    remove_column :subscriptions, :sku
  end
end
