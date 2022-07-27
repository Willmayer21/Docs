students =     [ "Peter", "Mary", "George", "Emma" ]
student_ages = [ 24     , 25    , 22      ,  20    ]

# On itère sur l'array student (avec index)

students.each_with_index do |student, index|
  "#{student} #{student_ages[index]}"
end


students_ages = {
  "Peter" => 24,
  "Mary" => 25,
  "George" => 22,
  "Emma" => 20
}

students_ages['Peter'] # -> 24

array = []
hash = {} # hash empty

paris = {
  "country" => "France",
  "population" => 2211000
  # key => value
}

# Lire la donnée
paris["country"]
paris["population"]

# Ajouter de la donnée
paris["star_monument"] = "Tour Eiffel"

# Modifier de la donnée
paris["population"] = 2210000

# Delete de la donnée
paris.delete("population")

# Itérer sur notre hash
paris.each do |key, value|
  "#{key} :  #{value}"
end

paris.key?("country") # -> true
paris.key?("city") # -> false

# retourner toutes les clés
paris.keys
# retourner toutes les values
paris.values

# Hash into hash
cities = {
  "London" => { "country" => "England", "monument" => "Big Ben" },
  "Paris" => { "country" => "France", "monument" => "Tour Eiffel" }
}

cities["Paris"]["country"]


