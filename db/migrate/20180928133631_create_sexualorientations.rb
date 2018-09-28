class CreateSexualorientations < ActiveRecord::Migration[5.2]
  def change
    create_table :sexualorientations do |t|
      t.string :orientation

      t.timestamps
    end
  end
end
