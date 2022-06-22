# frozen_string_literal: true

dial_book = {
    "newyork" => "212",
    "newbrunswick" => "732",
    "edison" => "908",
    "plainsboro" => "609",
    "sanfrancisco" => "301",
    "miami" => "305",
    "paloalto" => "650",
    "evanston" => "847",
    "orlando" => "407",
    "lancaster" => "717"
  }

# Get city names from the hash
def get_city_names(somehash)
  somehash.keys
end

# Get area code based on given hash and key
def get_area_code(somehash, key)
  somehash[key]
end

# Execution flow
loop do
  puts "Do you want to look up an area code based on city name? (Y/N)"
  answer = gets.chomp.downcase
  break if answer != "y"
  puts "Which city do you want to lookup?"
  puts get_city_names(dial_book)
  puts "Enter a city name from the list above:"
  city = gets.chomp.downcase
  if dial_book.include?(city)
    puts "The area code for #{prompt} is #
    {get_area_code(dial_book, prompt)}"
  else
    puts "You entered an invalid city name, try from the list above."
  end
end
