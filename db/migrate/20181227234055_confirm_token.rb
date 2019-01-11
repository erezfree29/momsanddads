class ConfirmToken < ActiveRecord::Migration[5.2]
  def change
       add_column :users, :confirm_token, :string
       remove_column :users, :confirmation_token
  end
end
