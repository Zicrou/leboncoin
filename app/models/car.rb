class Car < ApplicationRecord
    has_one_attached :inside_car_image
    has_one_attached :front_car_image
    has_one_attached :profil_view_image_car
    
    validates_presence_of :marque, :modele, :prix, :inside_car_image, :front_car_image, :profil_view_image_car, :distance #, on: :create, message: "can't be blank", if: proc { |obj| obj.condition? }}
end
