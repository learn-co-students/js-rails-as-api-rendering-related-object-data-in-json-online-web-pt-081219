class Location < ApplicationRecord
    has_many :birds, through: :sightings
    has_many :sightings
end
