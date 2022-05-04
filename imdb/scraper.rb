require 'open-uri'
require 'nokogiri'

# Définir la méthode
def fetch_movie_urls
  # récupérer l'url -> stocket l'url
  url =  "https://www.imdb.com/chart/top"
  # Ouvrir notre url et lire
  file = URI.open(url).read
  # Parse notre fichier -> nokogiri
  html_doc = Nokogiri::HTML(file)
  array = []
  # récupérer l'url -> Des 5 premiers films
  html_doc.search(".titleColumn a").first(5).each do |url|
    url = url.attribute("href").value
    url_final = "https://www.imdb.com#{url}"
    array << url_final
  end
  # On stocke les urls dans un array
  array
end

fetch_movie_urls

# Définir la méthode (paramètre -> url)
def scrape_movie(url)
  # On récupère l'url (paramètre)
  # On ouvre et on lit l'url
  file = URI.open(url).read
  # On parse le fichier
  html_doc = Nokogiri::HTML(file)
  # On récupère tout les éléments qu'on veut
  # On récupère le director
  director = html_doc.search('.ipc-metadata-list-item__list-content-item').first.text.strip
  year = html_doc.search('.sc-8c396aa2-2').first.text.strip
  title = html_doc.search('.sc-b73cd867-0').text.strip
  storyline = html_doc.search('.sc-16ede01-0').text.strip
  # On retourne un hash avec toutes les informations
  {
    director: director,
    year: year,
    title: title,
    storyline: storyline
  }
end

scrape_movie("https://www.imdb.com/title/tt0468569/")

