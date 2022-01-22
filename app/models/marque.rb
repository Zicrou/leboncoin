class Marque < ApplicationRecord
    has_many :modeles

    validates_presence_of :name
end
