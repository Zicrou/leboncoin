class Car < ApplicationRecord
    belongs_to :marque
    belongs_to :modele

    has_one_attached :inside_car_image
    has_one_attached :front_car_image
    has_one_attached :profil_view_image_car

    validates_presence_of :marque, :modele, :prix, :inside_car_image, :front_car_image, :profil_view_image_car, :distance, :description, :color, :year, :marque_id, :modele_id #, on: :create, message: "can't be blank", if: proc { |obj| obj.condition? }}

    # Researcch by Marque
    def self.search_by_marque(id)
        where(marque_id: id)
    end
    
    # Researcch by Modele
    def self.search_by_modele(id)
        where(modele_id: id)
    end

    # Researcch by Marque & Modele
    def self.search_by_marque_modele(id_marque, id_modele)
        where(marque_id: id_marque, modele_id: id_modele)
    end
end
