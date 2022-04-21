require 'date'
# On défini notre méthode -> days_to_xmas
def days_to_xmas
  # Récupérer la date d'aujourd'hui
  # Date.today
  # On récupère la date de noel
  # Date.new(2022, 12, 25)
  # Faire la différence entre les 2 dates
  return (Date.new(2022, 12, 25) - Date.today).to_i
end

puts days_to_xmas.class # -> Integer
puts days_to_xmas # -> 250


ssdfdgf