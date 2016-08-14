# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# Spot.create(name: 'Bondi Beach', latitude:37.55519, longitude:126.93692)
# Spot.create(name: 'Coogee Beach', latitude:37.863486, longitude:126.780777)
# Spot.create(name: 'Cronulla Beach', latitude:37.858026, longitude:126.785577)


require 'csv'

# csv_text = File.read(Rails.root.join('lib', 'seeds', 'test.csv'))
# csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
# csv.each do |row|
#   puts row.to_hash
# end


csv_text = File.read(Rails.root.join('lib', 'seeds', 'spot_ver1.0.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'UTF-8')
csv.each do |row|
  s = Spot.new
  s.id = row['id']
  s.name = row['name']
  s.latitude = row['latitude']
  s.longitude = row['longitude']
  s.category = row['category']
  s.save
  puts "#{s.latitude},#{s.longitude},#{s.name},#{s.id},#{s.category} saved"
end

# puts "There are now #{Spot.count} rows in the transactions table"