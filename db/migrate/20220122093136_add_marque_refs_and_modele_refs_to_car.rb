class AddMarqueRefsAndModeleRefsToCar < ActiveRecord::Migration[5.2]
  def change
    add_reference :cars, :marque, foreign_key: true
    add_reference :cars, :modele, foreign_key: true
  end
end
