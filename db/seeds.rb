# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Seeding DB..."

Airport.delete_all
Flight.delete_all

Airport.create(name: 'AMS', id: 1)
Airport.create(name: 'CDG', id: 2)
Airport.create(name: 'LHR', id: 3)

# AMS-CDG
Flight.create(date: 'Mon', adep_id: 1, ades_id: 2, eobt: '07:00')
Flight.create(date: 'Mon', adep_id: 1, ades_id: 2, eobt: '13:00')
Flight.create(date: 'Mon', adep_id: 1, ades_id: 2, eobt: '15:00')
Flight.create(date: 'Tue', adep_id: 1, ades_id: 2, eobt: '12:00')
Flight.create(date: 'Wed', adep_id: 1, ades_id: 2, eobt: '12:00')
Flight.create(date: 'Wed', adep_id: 1, ades_id: 2, eobt: '15:00')
Flight.create(date: 'Thu', adep_id: 1, ades_id: 2, eobt: '07:00')
Flight.create(date: 'Fri', adep_id: 1, ades_id: 2, eobt: '10:00')
Flight.create(date: 'Fri', adep_id: 1, ades_id: 2, eobt: '15:00')

# CDG-AMS
Flight.create(date: 'Mon', adep_id: 2, ades_id: 1, eobt: '10:00')
Flight.create(date: 'Mon', adep_id: 2, ades_id: 1, eobt: '16:00')
Flight.create(date: 'Mon', adep_id: 2, ades_id: 1, eobt: '18:00')
Flight.create(date: 'Tue', adep_id: 2, ades_id: 1, eobt: '15:00')
Flight.create(date: 'Wed', adep_id: 2, ades_id: 1, eobt: '15:00')
Flight.create(date: 'Wed', adep_id: 2, ades_id: 1, eobt: '18:00')
Flight.create(date: 'Thu', adep_id: 2, ades_id: 1, eobt: '10:00')
Flight.create(date: 'Fri', adep_id: 2, ades_id: 1, eobt: '13:00')
Flight.create(date: 'Fri', adep_id: 2, ades_id: 1, eobt: '18:00')

# AMS-LHR
Flight.create(date: 'Mon', adep_id: 1, ades_id: 3, eobt: '08:00')
Flight.create(date: 'Mon', adep_id: 1, ades_id: 3, eobt: '18:00')
Flight.create(date: 'Wed', adep_id: 1, ades_id: 3, eobt: '12:00')
Flight.create(date: 'Wed', adep_id: 1, ades_id: 3, eobt: '15:00')
Flight.create(date: 'Fri', adep_id: 1, ades_id: 3, eobt: '08:00')
Flight.create(date: 'Fri', adep_id: 1, ades_id: 3, eobt: '15:00')
# LHR-AMS
Flight.create(date: 'Mon', adep_id: 3, ades_id: 1, eobt: '11:00')
Flight.create(date: 'Mon', adep_id: 3, ades_id: 1, eobt: '21:00')
Flight.create(date: 'Wed', adep_id: 3, ades_id: 1, eobt: '15:00')
Flight.create(date: 'Wed', adep_id: 3, ades_id: 1, eobt: '18:00')
Flight.create(date: 'Fri', adep_id: 3, ades_id: 1, eobt: '11:00')
Flight.create(date: 'Fri', adep_id: 3, ades_id: 1, eobt: '18:00')

# LHR-CDG
Flight.create(date: 'Mon', adep_id: 3, ades_id: 2, eobt: '10:00')
Flight.create(date: 'Wed', adep_id: 3, ades_id: 2, eobt: '16:00')
Flight.create(date: 'Fri', adep_id: 3, ades_id: 2, eobt: '13:00')

# CDG-LHR
Flight.create(date: 'Mon', adep_id: 2, ades_id: 3, eobt: '13:00')
Flight.create(date: 'Wed', adep_id: 2, ades_id: 3, eobt: '19:00')
Flight.create(date: 'Fri', adep_id: 2, ades_id: 3, eobt: '16:00')

puts 'Finished seeding'
