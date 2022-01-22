class Modele < ApplicationRecord
    belongs_to :marque

    validates_presence_of :name, :marque_id
end
