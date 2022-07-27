# require le fichier
require_relative 'scraper'
# On appelle fetch_movies_urls => On obtient l'array
array = fetch_movie_urls
# On itère sur notre array
array.each do |url|
  # On appelle la méthode scrape_movie pour chaque url
  p scrape_movie(url)
end
