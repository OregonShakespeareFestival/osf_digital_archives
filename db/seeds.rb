# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.find_or_create_by!(email: "andrewkr@osfashland.org") { |user| user.password = "osfarchive2014"; user.display_name = "Andrew Krug" }
User.find_or_create_by!(email: "joelf@osfashland.org") { |user| user.password = "osfarchive2014"; user.display_name = "Joel Ferrier" }
User.find_or_create_by!(email: "mariad@osfashland.org") { |user| user.password = "osfarchive2014"; user.display_name = "Maria Deweerdt" }
User.find_or_create_by!(email: "debrag@osfashland.org") { |user| user.password = "osfarchive2014"; user.display_name = "Debra Griffith" }

User.find_or_create_by!(email: "robert.head@codingzeal.com") { |user| user.password = "osfarchive2014"; user.display_name = "Robert Head" }
User.find_or_create_by!(email: "jeff.parr@codingzeal.com") { |user| user.password = "osfarchive2014"; user.display_name = "Jeff Parr" }
User.find_or_create_by!(email: "sean.culver@codingzeal.com") { |user| user.password = "osfarchive2014"; user.display_name = "Sean Culver" }

if Module.const_defined?(:ProductionCredits)
  w1 = ProductionCredits::Work.find_or_create_by!(title: "A Midsummer Night's Dream") { |work| work.medium = 'Play'; work.year = 1594 }
  w2 = ProductionCredits::Work.find_or_create_by!(title: "A Raisin in the Sun") { |work| work.medium = 'Play'; work.year = 1959 }
  w3 = ProductionCredits::Work.find_or_create_by!(title: "A Streetcar Named Desire") { |work| work.medium = 'Play'; work.year = 1947 }

  w1.productions << ProductionCredits::Production.create!(open_on: '3/1/1949', close_on: '6/1/1949')
  w1.productions << ProductionCredits::Production.create!(open_on: '3/1/2008', close_on: '11/1/2008')

  w2.productions << ProductionCredits::Production.create!(open_on: '3/1/2004', close_on: '11/1/2004')

  w3.productions << ProductionCredits::Production.create!(open_on: '3/1/2013', close_on: '11/1/2013')

  # # roles for A Midsummer Night's Dream
  # w1.roles << ProductionCredits::Role.create!(category: 'cast', name: 'xxx')
  # w1.roles << ProductionCredits::Role.create!(category: 'cast', name: 'xxx2')
  # w1.roles << ProductionCredits::Role.create!(category: 'cast', name: 'xxx3')

  # # create a person
  # p1 = ProductionCredits::Person.create!(denormalized_full_name: "XXXX", date_of_birth: "1/1/1980")
  # p1.names << ProductionCredits::Name.create!(full_name: "XXXX", cannonized_at: "1/1/2014")

  # # create a venue
  # ProductionCredits::Venue.create!(denormalized_name: "XXXX", opened_on: "1/1/1950")


end