class RemoveCountisrFromParent < ActiveRecord::Migration[5.2]
  def change
    remove_column :parents, :country
    add_column :parents, :countryname, :string
  end
end
