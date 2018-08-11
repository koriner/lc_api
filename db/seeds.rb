# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'

# Clear all models to start with
Lga.destroy_all
Address.destroy_all
Property.destroy_all


# Populate LGA data
lga_source = File.read(Rails.root.join('lib', 'seeds', 'lgas.csv'))
lga_csv = CSV.parse(lga_source, :headers => true, :encoding => 'ISO-8859-1')

lga_csv.each do |row|
  lga = Lga.new
  lga.code = row['code']
  lga.name = row['name']
  lga.long_name = row['long_name']
  lga.save!
end


# Populate Property data
property_source = File.read(Rails.root.join('lib', 'seeds', 'properties.csv'))
property_csv = CSV.parse(property_source, :headers => true, :encoding => 'ISO-8859-1')

property_csv.each do |row|
  prop = Property.new
  prop.full_property_id = row['id']
  prop.lga_code = row['lga_code']
  prop.council_property_no = row['council_property_number']
  prop.lat = row['latitude']
  prop.lon = row['longitude']
  
  prop.save!
end


# Populate Address data
address_source = File.read(Rails.root.join('lib', 'seeds', 'addresses.csv'))
address_csv = CSV.parse(address_source, :headers => true, :encoding => 'ISO-8859-1')

address_csv.each do |row|
  address = Address.new
  address.feature_id = row['feature_id']
  address.property_id = row['property_id']
  address.full_address = row['full_address']
  address.lga_code = row['lga_code']
  address.state = row['state']
  address.postcode = row['postcode']  
  address.save!
end


puts "created #{Lga.all.count} LGAs"
puts "created #{Property.all.count} properties"
puts "created #{Address.all.count} addresses"
