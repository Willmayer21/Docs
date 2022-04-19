require 'date'

def tomorrow # -> Sans paramètre
  tomorrow_date = Date.today + 1
  return tomorrow_date.strftime('%d %B')
end

# puts tomorrow # -> 20 april

def say_hi(name)
  return "Hi #{name}" # -> "Hi " + name
end

# puts say_hi("Le wagon")
# puts say_hi("Batch 899")
# puts say_hi

def full_name(first_name, last_name)
  name = first_name.capitalize + " " + last_name.capitalize
  return name
end

# puts full_name("Batch", "899")
batch_first_name = "Batch"
batch_last_name = "899"
puts full_name(batch_first_name, batch_last_name)



