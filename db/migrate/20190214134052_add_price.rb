class AddPrice < ActiveRecord::Migration[5.2]
  def change
    add_monetize :subscriptions, :price, currency: { present: false }

  end
end
