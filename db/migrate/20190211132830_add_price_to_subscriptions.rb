class AddPriceToSubscriptions < ActiveRecord::Migration[5.2]
  def change
    add_monetize :subscriptions, :price, currency: { present: false }
    t.monetize :amount, currency: { present: false }


  end
end
