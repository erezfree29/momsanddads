class Removepostcode < ActiveRecord::Migration[5.2]
  def change
    remove_column :parents, :postcode
  end
end
