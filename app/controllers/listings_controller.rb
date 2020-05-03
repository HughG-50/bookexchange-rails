class ListingsController < ApplicationController
    # This is a filter. This means that the private set_listing method will 
    # run before any of show, edit, update or destroy are run, if called.
    before_action :set_listing, only: [:show, :edit, :update, :destroy]

    # Shows entirety of listings
    def index 
        # @listings is an instance variable will give us all of the Listing objects
        # within the database
        @listings = Listing.all
    end

    # Show individual listing
    def show 

    end

    # Create a new listing
    def create 
        # new listing created from the input parameters - id, title, etc
        @listing = Listing.create(listing_params)
    end

    # Update a listing
    def update 

    end

    # Edit listing
    def edit 
        
    end

    # Destroy a listing
    def destroy 

    end

    private 

    # Set listing is referring to setting the instance variable @listing,
    # which matches the instance variable of the listing with the given id. 
    # We need to do this multiple times in the controller, so we have defined our 
    # own method here. 
    # Gives us a single listing
    def set_listing
        @listing = Listing.find(params[:id])
    end

    # Set the instance variables for the Authors and Genres. 
    # Gives us all authors and all genres
    def set_genres_and_authors
        @authors = Author.all 
        @genres = Genre.all
    end

    # This is creating a shorthand way of writing out all of the fields necessary
    # for making a new listing. E.g. creating a new listing:
    # @listing = Listing.create(listing_params)
    def listing_params
        params.require(:listing).permit(:title, :description, :price, :deposit, :city, 
            :state, :country, :author_id, :genre_id)
    end

end