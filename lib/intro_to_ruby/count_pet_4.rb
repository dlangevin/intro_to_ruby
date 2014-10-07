require 'csv'

# explain Strings and Numbers
filename = File.expand_path('../../data/pets.csv', __FILE__)
data = CSV.read(filename, headers: true)

data = data.map { |row| row.to_hash }

puts "We changed data to:"
puts data
