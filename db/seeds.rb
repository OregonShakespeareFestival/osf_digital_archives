# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.find_or_create_by!(email: "andrewkr@osfashland.org") { |user| user.password = "osfarchive2014"; user.display_name = "Andrew Krug"; user.group_list = "admin" }
User.find_or_create_by!(email: "joelf@osfashland.org") { |user| user.password = "osfarchive2014"; user.display_name = "Joel Ferrier"; user.group_list = "admin" }
User.find_or_create_by!(email: "mariad@osfashland.org") { |user| user.password = "osfarchive2014"; user.display_name = "Maria Deweerdt"; user.group_list = "admin" }
User.find_or_create_by!(email: "debrag@osfashland.org") { |user| user.password = "osfarchive2014"; user.display_name = "Debra Griffith"; user.group_list = "admin" }

User.find_or_create_by!(email: "trever@codingzeal.com") { |user| user.password = "osfarchive2014"; user.display_name = "Trever Yarrish"; user.group_list = "admin"}
User.find_or_create_by!(email: "jeff.parr@codingzeal.com") { |user| user.password = "osfarchive2014"; user.display_name = "Jeff Parr"; user.group_list = "admin"}
User.find_or_create_by!(email: "sean.culver@codingzeal.com") { |user| user.password = "osfarchive2014"; user.display_name = "Sean Culver"; user.group_list = "admin" }

if Module.const_defined?(:ProductionCredits)


end
