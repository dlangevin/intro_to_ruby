require 'csv'

# explain Strings and Numbers
filename = File.expand_path('../../lib/data/pets.csv', __FILE__)
data = CSV.read(filename, headers: true)

data.each do |row|
  puts row.to_hash
end
