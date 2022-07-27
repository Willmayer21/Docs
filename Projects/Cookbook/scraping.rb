require "open-uri"
require "nokogiri"
require_relative "recipe"

class ScrapingService
  def initialize(ingredient)
    @ingredient = ingredient
  end

  def call
    # open url
    url = "https://www.allrecipes.com/search/results/?search=#{@ingredient}"
    # Parse HTML
    doc = Nokogiri::HTML(URI.open(url).read, nil, "utf-8")
    # Take 5 first recipes results
    filtered_result = []
    results = doc.search(".card__recipe")
    results.first(5).each do |recipe_card|
      # puts recipe_card
      name = recipe_card.search("h3").text.strip
      description = recipe_card.search(".card__summary").text.strip
      rating = recipe_card.search(".review-star-text").text.strip
      # We retrieve the url of the recipe
      recipe_url = recipe_card.search(".card__imageContainer a").first.attribute("href").value.strip
      # we use the url to get access to the recipe page
      recipe_html = URI.open(recipe_url).read
      recipe_doc = Nokogiri::HTML(recipe_html, nil, "utf-8")
      # we retrieve the prep_element from the page
      prep_element = recipe_doc.search(".recipe-meta-item").find do |element|
        # We use a regex to match words having "prep"
        element.text.strip.match?(/prep/i)
      end
      # We check if the prep_time exist and we retrieve it
      prep_time = prep_element ? prep_element.text.strip.match(/prep:\s+(\w* \w*)/i)[1] : nil
      # Push into our array an instance of Recipe having all the details of the recipe we scrap.
      filtered_result << Recipe.new(name: name, description: description, rating: rating, prep_time: prep_time)
    end
    filtered_result
  end
end
