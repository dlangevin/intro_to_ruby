require 'csv'

require_relative './pet_counter'
require_relative './pet'

# explain Strings and Numbers
filename = File.expand_path(ARGV[0])
data = CSV.read(filename, headers: true)

pet_counter = PetCounter.new(data)
pet_counter.create_file
