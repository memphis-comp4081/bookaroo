# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

rand = Author.create!(first_name: 'Ayn',
                      last_name: 'Rand',
                      year_born: 1905)

benchley = Author.create!(first_name: 'Peter',
                          last_name: 'Benchley',
                          year_born: 1940)

rand.books.push(Book.create!(title: 'The Fountainhead',
                             year_published: 1943,
                             summary: 'Individualistic architect...'))
rand.save!

rand.books.create!(title: 'Atlas Shrugged',
                   year_published: 1957,
                   summary: 'Dystopian USA...')

benchley.books.create!(title: 'Jaws',
                       year_published: 1974,
                       summary: 'Shark!...')

