require 'csv'

# explain Strings and Numbers
filename = File.expand_path('../../lib/data/pets.csv', __FILE__)
data = CSV.read(filename, headers: true)

data = data.map { |row| row.to_hash }
data = data.select { |row| row['Pet Type'] == 'Snake' }

puts "We filtered data to:"
puts data
