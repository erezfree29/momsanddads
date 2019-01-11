class ChangeConfirmTokenToConfirmationToken < ActiveRecord::Migration[5.2]
  def change
   add_column :users, :confirmation_token, :datetime
   remove_column :users, :confirm_token
  end
end

