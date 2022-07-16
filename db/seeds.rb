# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Seeding DB..."

Airport.create(name: 'AMS')
Airport.create(name: 'CDG')
Airport.create(name: 'LHR')

# AMS-CDG
Flight.create(date: Date.parse('2022-07-04'), adep_id: 0, ades_id: 1, eobt: '07:00')
Flight.create(date: Date.parse('2022-07-04'), adep_id: 0, ades_id: 1, eobt: '13:00')
Flight.create(date: Date.parse('2022-07-04'), adep_id: 0, ades_id: 1, eobt: '15:00')
Flight.create(date: Date.parse('2022-07-05'), adep_id: 0, ades_id: 1, eobt: '12:00')
Flight.create(date: Date.parse('2022-07-06'), adep_id: 0, ades_id: 1, eobt: '12:00')
Flight.create(date: Date.parse('2022-07-06'), adep_id: 0, ades_id: 1, eobt: '15:00')
Flight.create(date: Date.parse('2022-07-07'), adep_id: 0, ades_id: 1, eobt: '07:00')
Flight.create(date: Date.parse('2022-07-08'), adep_id: 0, ades_id: 1, eobt: '10:00')
Flight.create(date: Date.parse('2022-07-08'), adep_id: 0, ades_id: 1, eobt: '15:00')

# CDG-AMS
Flight.create(date: Date.parse('2022-07-04'), adep_id: 1, ades_id: 0, eobt: '10:00')
Flight.create(date: Date.parse('2022-07-04'), adep_id: 1, ades_id: 0, eobt: '16:00')
Flight.create(date: Date.parse('2022-07-04'), adep_id: 1, ades_id: 0, eobt: '18:00')
Flight.create(date: Date.parse('2022-07-05'), adep_id: 1, ades_id: 0, eobt: '15:00')
Flight.create(date: Date.parse('2022-07-06'), adep_id: 1, ades_id: 0, eobt: '15:00')
Flight.create(date: Date.parse('2022-07-06'), adep_id: 1, ades_id: 0, eobt: '18:00')
Flight.create(date: Date.parse('2022-07-07'), adep_id: 1, ades_id: 0, eobt: '10:00')
Flight.create(date: Date.parse('2022-07-08'), adep_id: 1, ades_id: 0, eobt: '13:00')
Flight.create(date: Date.parse('2022-07-08'), adep_id: 1, ades_id: 0, eobt: '18:00')

# AMS-LHR
Flight.create(date: Date.parse('2022-07-04'), adep_id: 0, ades_id: 2, eobt: '08:00')
Flight.create(date: Date.parse('2022-07-04'), adep_id: 0, ades_id: 2, eobt: '18:00')
Flight.create(date: Date.parse('2022-07-06'), adep_id: 0, ades_id: 2, eobt: '12:00')
Flight.create(date: Date.parse('2022-07-06'), adep_id: 0, ades_id: 2, eobt: '15:00')
Flight.create(date: Date.parse('2022-07-08'), adep_id: 0, ades_id: 2, eobt: '08:00')
Flight.create(date: Date.parse('2022-07-08'), adep_id: 0, ades_id: 2, eobt: '15:00')

# LHR-AMS
Flight.create(date: Date.parse('2022-07-04'), adep_id: 2, ades_id: 0, eobt: '11:00')
Flight.create(date: Date.parse('2022-07-04'), adep_id: 2, ades_id: 0, eobt: '21:00')
Flight.create(date: Date.parse('2022-07-06'), adep_id: 2, ades_id: 0, eobt: '15:00')
Flight.create(date: Date.parse('2022-07-06'), adep_id: 2, ades_id: 0, eobt: '18:00')
Flight.create(date: Date.parse('2022-07-08'), adep_id: 2, ades_id: 0, eobt: '11:00')
Flight.create(date: Date.parse('2022-07-08'), adep_id: 2, ades_id: 0, eobt: '18:00')

# LHR-CDG
Flight.create(date: Date.parse('2022-07-04'), adep_id: 2, ades_id: 1, eobt: '10:00')
Flight.create(date: Date.parse('2022-07-06'), adep_id: 2, ades_id: 1, eobt: '16:00')
Flight.create(date: Date.parse('2022-07-08'), adep_id: 2, ades_id: 1, eobt: '13:00')

# CDG-LHR
Flight.create(date: Date.parse('2022-07-04'), adep_id: 1, ades_id: 2, eobt: '13:00')
Flight.create(date: Date.parse('2022-07-06'), adep_id: 1, ades_id: 2, eobt: '19:00')
Flight.create(date: Date.parse('2022-07-08'), adep_id: 1, ades_id: 2, eobt: '16:00')