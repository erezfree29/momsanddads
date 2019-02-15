class AddSkuToSub < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :subscription_sku, :string
  end
end
