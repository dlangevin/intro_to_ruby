require 'csv'


# explain Strings and Numbers
filename = File.expand_path('../../lib/data/pets.csv', __FILE__)
data = CSV.read(filename)

num_rows = 0

data.each do |row|
  num_rows = num_rows + 1
end

puts "There are #{num_rows} rows"