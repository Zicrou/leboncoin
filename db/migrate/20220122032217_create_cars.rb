class CreateCars < ActiveRecord::Migration[5.2]
  def change
    create_table :cars do |t|
      t.string :marque
      t.string :modele
      t.integer :prix

      t.timestamps
    end
  end
end
