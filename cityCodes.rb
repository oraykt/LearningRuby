dial_book={
    "newyork" => "212",
    "newbrunswick" => "732",
    "sanfrancisco" => "301",
    "miami" => "305",
    "evanston" => "847",
    "lancaster" => "717"
}

def get_city_names(some_hash)
  some_hash.keys
end

def get_area_code(some_hash, key)
  some_hash[key]
end

loop do
  puts "Do you want to lookup an area code based on a city name? (Y/n)"
  break if gets.chomp.downcase != "y"
  puts "Which city do you want to lookup the area code for?"
  puts get_city_names(dial_book)
  puts "Enter your selection"
  prompt = gets.chomp.downcase
  if dial_book.include?(prompt)
    puts "The are code for #{prompt} is #{get_area_code(dial_book, prompt)}"
  else
    puts "You entered an invalid city name"
  end
end