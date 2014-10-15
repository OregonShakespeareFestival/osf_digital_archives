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
  w1.roles << r1 = ProductionCredits::Role.create!(category: 'Cast', name: 'Puck')
  w1.roles << r2 = ProductionCredits::Role.create!(category: 'Cast', name: 'Theseus')
  w1.roles << r3 = ProductionCredits::Role.create!(category: 'Cast', name: 'Helena')
  w1.roles << r4 = ProductionCredits::Role.create!(category: 'Writing', name: 'Author')

  w2.roles << r5 = ProductionCredits::Role.create!(category: 'Cast', name: 'Karl Lindler')
  w2.roles << r6 = ProductionCredits::Role.create!(category: 'Cast', name: 'Lena Younger')
  w2.roles << r7 = ProductionCredits::Role.create!(category: 'Cast', name: 'Ruth Younger')

  w3.roles << r8  = ProductionCredits::Role.create!(category: 'Cast', name: 'Blanche')
  w3.roles << r9  = ProductionCredits::Role.create!(category: 'Cast', name: 'Stanley Kowalski')
  w3.roles << r10 = ProductionCredits::Role.create!(category: 'Cast', name: 'Stella Kowalski')
  w3.roles << r11 = ProductionCredits::Role.create!(category: 'Writing', name: 'Author')


  # People
  p1 = ProductionCredits::Person.create!(denormalized_full_name: "Gina Daniels", date_of_birth: "1/1/1980")
  p2 = ProductionCredits::Person.create!(denormalized_full_name: "Michael Elich", date_of_birth: "1/1/1980")
  p3 = ProductionCredits::Person.create!(denormalized_full_name: "Christiana Clark", date_of_birth: "1/1/1980")

  p4 = ProductionCredits::Person.create!(denormalized_full_name: "Richard Howard", date_of_birth: "1/1/1980")
  p5 = ProductionCredits::Person.create!(denormalized_full_name: "Pat Bowie", date_of_birth: "1/1/1980")
  p6 = ProductionCredits::Person.create!(denormalized_full_name: "Crystal Fox", date_of_birth: "1/1/1980")
  #2013 streetcar
  p7 = ProductionCredits::Person.create!(denormalized_full_name: "Alejandra Escalante", date_of_birth: "1/1/1980") #stella kowalski
  p8 = ProductionCredits::Person.create!(denormalized_full_name: "Danforth Comins", date_of_birth: "1/1/1980") #stanley
  p9 = ProductionCredits::Person.create!(denormalized_full_name: "Kate Mulligan", date_of_birth: "1/1/1980") #blanche

  p10 = ProductionCredits::Person.create!(denormalized_full_name: "William Shakespeare", date_of_birth: "1/1/1980")
  p11 = ProductionCredits::Person.create!(denormalized_full_name: "Tennessee Williams", date_of_birth: "1/1/1980")

  c1 = ProductionCredits::Credit.create!(credit_type: "Original", role: r4, person: p10)
  c2 = ProductionCredits::Credit.create!(credit_type: "Original", role: r11, person: p11)
  c3 = ProductionCredits::Credit.create!(credit_type: "Original", role: r1, person: p1)
  c4 = ProductionCredits::Credit.create!(credit_type: "Original", role: r2, person: p2)
  c5 = ProductionCredits::Credit.create!(credit_type: "Original", role: r3, person: p3)

end