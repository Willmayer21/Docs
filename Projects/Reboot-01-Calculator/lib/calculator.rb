def calculate(first_number, second_number, operation)
  if operation == "+"
    result =  "Result: #{(first_number + second_number)}"
  elsif operation == "-"
     result = "Result: #{(first_number - second_number)}"
  elsif operation == "/"
    result = "Result: #{(first_number / second_number)}"
  elsif operation == "*"
    result = "Result: #{(first_number * second_number)}"
  end
end
