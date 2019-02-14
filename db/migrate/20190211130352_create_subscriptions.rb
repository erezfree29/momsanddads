class CreateSubscriptions < ActiveRecord::Migration[5.2]
  def change
    create_table :subscriptions do |t|
      t.string :name
      t.string :length
      t.date :startdate
      t.date :enddate

      t.timestamps
    end
  end
end
