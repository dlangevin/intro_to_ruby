require 'csv'

# explain Strings and Numbers
filename = File.expand_path('../../data/pets.csv', __FILE__)
data = CSV.read(filename)

puts "There are #{data.length} rows"