class AddImageToCar < ActiveRecord::Migration[5.2]
  def change
    add_column :cars, :inside_car_image, :string
    add_column :cars, :front_car_image, :string
    add_column :cars, :profil_view_image_car, :string
  end
end
