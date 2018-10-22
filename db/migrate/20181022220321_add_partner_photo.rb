class AddPartnerPhoto < ActiveRecord::Migration[5.2]
  def change
    add_column :parents, :partner_photo, :string
  end
end
