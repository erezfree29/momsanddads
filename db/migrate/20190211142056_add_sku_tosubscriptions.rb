class AddSkuTosubscriptions < ActiveRecord::Migration[5.2]
  def change
    add_column :subscriptions, :sku, :string
  end
end
