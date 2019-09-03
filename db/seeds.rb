# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'

csv_text = File.read(Rails.root.join('lib','seeds','listings.csv'))
csv = CSV.parse(csv_text, :headers => false, :encoding => 'ISO-8859-1')
csv.each do |row|
  t = House.new
  t.latitude = row[0]
  t.longitude = row[1]
  t.address = row[2]
  t.save
end

puts "There are now #{House .count} rows in the transactions table"