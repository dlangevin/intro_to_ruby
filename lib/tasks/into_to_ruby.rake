require 'csv'

desc 'Import pets from our file into the database'
task :import_pets, [:file] => :environment do |task, args|
  filename = File.expand_path(args[:file])
  data = CSV.read(filename, headers: true)

  IntroToRuby::PetCounter.new(data).import
end