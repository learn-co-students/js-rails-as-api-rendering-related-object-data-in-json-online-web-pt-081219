class SightingsController < ApplicationController

    def show
        sighting = Sighting.find_by(id: params[:id])
        if sighting 
        render json: sighting, include: [:bird, :location]
        # render json: { id: sighting.id, bird: sighting.bird, location: sighting.location }
#above is nested. starting with sighting aving two keys of bird amd location
        else 
            render json: { message: 'No sighting found with that id' }
        end
end
end

# def show
#     sighting = Sighting.find_by(id: params[:id])
#     render json: sighting.to_json(:include => {
#       :bird => {:only => [:name, :species]},
#       :location => {:only => [:latitude, :longitude]}
#     }, :except => [:updated_at])
#   end