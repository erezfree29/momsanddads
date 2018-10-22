class Removelatiandlongi < ActiveRecord::Migration[5.2]
  def change
    remove_column :parents, :latitude
    remove_column :parents, :longitude
  end
end
