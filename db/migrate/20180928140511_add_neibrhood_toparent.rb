class AddNeibrhoodToparent < ActiveRecord::Migration[5.2]
  def change
    add_column :parents, :neighborhood, :string
  end
end
