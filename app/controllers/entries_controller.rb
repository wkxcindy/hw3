class EntriesController < ApplicationController

  def new
    # Find the place where this entry will belong
    @place = Place.find_by({ "id" => params["place_id"] })
    
    # Render the form to create a new entry
  end

  def create
    # Create a new Entry object
    @entry = Entry.new

    # Assign user-entered data
    @entry["title"] = params["title"]
    @entry["description"] = params["description"]
    @entry["occurred_on"] = params["occurred_on"]

    # Link the entry to the correct place
    @entry["place_id"] = params["place_id"]

    # Save to database
    @entry.save

    # Redirect back to the place's page
    redirect_to "/places/#{@entry["place_id"]}"
  end

end