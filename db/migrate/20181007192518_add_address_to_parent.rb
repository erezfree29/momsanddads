class AddAddressToParent < ActiveRecord::Migration[5.2]
  def change
    add_column :parents, :address, :string
  end
end
