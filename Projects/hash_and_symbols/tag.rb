def tag(balise, content, attributes = {})
  p attrs = attributes.map { |key, value| " #{key}=#{value}" }.join
  "<#{balise}#{attrs}>#{content}</#{balise}>"
end

@
p tag("h1", "Hello world")
# => <h1>Hello world</h1>

p tag("h1", "Hello world", { class: "bold" })
# => <h1 class='bold'>Hello world</h1>


p tag("a", "Le Wagon", { href: "http://lewagon.org", class: "btn" })
# => <a href='http://lewagon.org' class='btn'>Le Wagon</a>
