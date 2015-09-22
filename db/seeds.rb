# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Author.create!({first_name: 'Ayn',
                last_name: 'Rand',
                year_born: 1905})

Author.create!({first_name: 'Peter',
                last_name: 'Benchley',
                year_born: 1940})
