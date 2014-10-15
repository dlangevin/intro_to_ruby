require 'csv'

# explain Strings and Numbers
filename = File.expand_path('../../lib/data/pets.csv', __FILE__)
data = CSV.read(filename)

data.each do |row|
  puts row[1]
end