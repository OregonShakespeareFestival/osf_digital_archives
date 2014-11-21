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
User.find_or_create_by!(email: "trever@codingzeal.com") { |user| user.password = "osfarchive2014"; user.display_name = "Trever Yarrish" }
User.find_or_create_by!(email: "jeff.parr@codingzeal.com") { |user| user.password = "osfarchive2014"; user.display_name = "Jeff Parr" }
User.find_or_create_by!(email: "sean.culver@codingzeal.com") { |user| user.password = "osfarchive2014"; user.display_name = "Sean Culver" }

if Module.const_defined?(:ProductionCredits)


end
