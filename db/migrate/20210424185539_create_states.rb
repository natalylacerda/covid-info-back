class CreateStates < ActiveRecord::Migration[6.0]
  def change
    create_table :states do |t|
      t.string :name
      t.string :uf
      t.integer :cases
      t.integer :deaths
      t.datetime :datetime

      t.timestamps
    end
  end
end
