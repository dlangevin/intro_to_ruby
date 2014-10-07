require 'csv'


class PetCounter

  def initialize(data)
    @data = data.map { |row| row.to_hash }
  end

  def count_pet_type(data, type)
    data = @data.select { |row| row['Pet Type'] == type }
    puts "We found #{data.length} for #{type}"
  end
end

# explain Strings and Numbers
filename = File.expand_path('../../data/pets.csv', __FILE__)
data = CSV.read(filename, headers: true)

pet_counter = PetCounter.new(data)

pet_counter.count_pet_type('Snake')
pet_counter.count_pet_type('Bear')
pet_counter.count_pet_type('Orangutan')
