class PagesController < ApplicationController
    def home
        render plain: "Home Page"
    end

    def not_found 
        render plain: "Page not found"
    end
end