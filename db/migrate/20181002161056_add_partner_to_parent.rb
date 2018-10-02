class AddPartnerToParent < ActiveRecord::Migration[5.2]
  def change
    add_column :parents, :partner, :string
  end
end
