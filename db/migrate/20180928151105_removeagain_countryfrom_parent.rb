class RemoveagainCountryfromParent < ActiveRecord::Migration[5.2]
  def change
    remove_column :parents, :countryname
  end
end
