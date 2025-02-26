class PlacesController < ApplicationController

  def index
    # Fetch all places from the database
    @places = Place.all
    # Render the index view (list of places)
  end

  def show
    # Find a specific place using its ID
    @place = Place.find_by({ "id" => params["id"] })
    
    # Find all entries that belong to this place
    @entries = Entry.where({ "place_id" => @place["id"] })
    
    # Render the show view (place details and its journal entries)
  end

  def new
    # Render the form to create a new place
  end

  def create
    # Create a new Place object
    @place = Place.new

    # Assign user-entered data to the new Place
    @place["name"] = params["name"]

    # Save the place to the database
    @place.save

    # Redirect user back to the list of places
    redirect_to "/places"
  end

end