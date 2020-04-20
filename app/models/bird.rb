class Bird < ApplicationRecord
    has_many :locations, through: :sightings
    has_many :sightings
end