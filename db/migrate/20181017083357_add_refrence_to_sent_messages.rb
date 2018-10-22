class AddRefrenceToSentMessages < ActiveRecord::Migration[5.2]
  def change
    remove_column :parents, :user_id
  end
end
