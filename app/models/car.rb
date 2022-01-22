class Car < ApplicationRecord
    validates_presence_of :marque, :modele, :prix, :inside_car_image, :front_car_image, :profil_view_image_car, :distance #, on: :create, message: "can't be blank", if: proc { |obj| obj.condition? }}
end
