require 'csv'

# explain Strings and Numbers
filename = File.expand_path('../../lib/data/pets.csv', __FILE__)
data = CSV.read(filename)

num_snakes = 0

data.each do |row|
  if row[1] == 'Snake'
    num_snakes += 1
  end
end

puts "There are #{num_snakes} snakes"