Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
get("/", { :controller => "articles", :action => "index" })
# Routes for Places
get("/places", { controller: "places", action: "index" })       # List all places
get("/places/new", { controller: "places", action: "new" })     # New place form
post("/places", { controller: "places", action: "create" })     # Create a place
get("/places/:id", { controller: "places", action: "show" })    # Show a place
# Routes for Entries
get("/entries/new/:place_id", { controller: "entries", action: "new" })  # Show form for new entry
post("/entries", { controller: "entries", action: "create" })            # Create an entry

end
