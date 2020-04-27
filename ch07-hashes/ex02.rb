# Hash#merge method merges two hashes together overwriting any identical pairs. 
# While merge method returns any new hash and doesn't mutate the caller, merge! method 
# mustates the calling hash.

movie_ratings = {
  leon: 8,
  gotfather: 10,
  interstellar: 9
}

new_movie_ratings = {
  starwars: 10,
  batman: 7
}

combined_movie_ratings = movie_ratings.merge(new_movie_ratings)
p combined_movie_ratings

movie_ratings.merge!(new_movie_ratings)
p movie_ratings