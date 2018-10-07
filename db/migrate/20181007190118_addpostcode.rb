class Addpostcode < ActiveRecord::Migration[5.2]
  def change
    add_column :parents, :postcode, :string
  end
end
