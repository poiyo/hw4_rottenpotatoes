class DirectorController < ApplicationController

  def find_movies_by_director
    @movie_id = params[:movie_id] 
    @movie = Movie.find_by_id(@movie_id)
    @director = @movie.director
    @movies = Movie.find_all_by_director(@director)
    render "director/find_movies_by_director"
  end

end
