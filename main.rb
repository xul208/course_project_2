# frozen_string_literal: true

dial_book = {
  'newyork' => '212',
  'newbrunswick' => '732',
  'edison' => '908',
  'plainsboro' => '609',
  'sanfrancisco' => '301',
  "miami" => "305",
  "paloalto" => "650",
  "evanston" => "847",
  "orlando" => "407",
  "lancaster" => "717"
}

# Get city names from the hash
def get_city_names(somehash)
  return somehash.keys.map(&:capitalize)
end

# Get area code based on given hash
def get_area_code(somehash, key)
  if !somehash.has_key?(key)
    return 'The city you entered is not in the dictionary!'
  end
  return somehash[key]
end

loop do
  puts 'Do you want to lookup an area code based on a city name? (Y/N)'
  answer = gets.chomp.downcase
  break if answer != 'y'
  
  puts 'Which city do you want the area code for?'
  puts get_city_names(dial_book)

  city = gets.chomp.downcase
  puts get_area_code(dial_book, city)
end
