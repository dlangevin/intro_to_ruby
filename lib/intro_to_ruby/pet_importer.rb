module IntroToRuby
  class PetImporter

    def initialize(data)
      @data = data.map(&:to_hash)
    end

    def import
      pets.each do |pet|
        pet.save
      end
      puts "Imported #{pets.count} pets"
    end

    private

    def pets
      @pets ||= @data.map do |row|
        Pet.new(
          owner: owner(row),
          name: row['Pet Name'],
          pet_type: row['Pet Type']
        )
      end
    end

    def owner(row)
      names = row['Name'].split(' ')
      last_name = names.pop
      Owner.where(
        first_name: names.join(' '),
        last_name: last_name
      )
      .first_or_create
    end
  end
end