require 'csv'
require 'intro_to_ruby/pet_importer'

desc 'Import pets from our file into the database'
task :import_pets, [:file] => :environment do |task, args|
  filename = File.expand_path(args[:file])
  data = CSV.read(filename, headers: true)

  Pet.delete_all
  Owner.delete_all

  IntroToRuby::PetImporter.new(data).import
end