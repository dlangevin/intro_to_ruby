require 'csv'

# explain Strings and Numbers
filename = File.expand_path('../../data/pets.csv', __FILE__)
data = CSV.read(filename, headers: true)

def count_pet_type(data, type)
  data = data.map { |row| row.to_hash }
  data = data.select { |row| row['Pet Type'] == type }
  puts "We found #{data.length} for #{type}"
end

count_pet_type(data, 'Snake')
count_pet_type(data, 'Bear')
count_pet_type(data, 'Orangutan')
