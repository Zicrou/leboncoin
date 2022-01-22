class AddMarqueRefsToModele < ActiveRecord::Migration[5.2]
  def change
    add_reference :modeles, :marque, foreign_key: true
  end
end
