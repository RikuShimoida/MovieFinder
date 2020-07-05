class MoviesController < ApplicationController
    require 'themoviedb-api'
    Tmdb::Api.key("10404a45468df92c746003d17f8442f")
  
    def search
    end
  
    def index2
      @movies = Tmdb::Search.movie(params[:search])
    end
  
    def show2
    end
  
  end