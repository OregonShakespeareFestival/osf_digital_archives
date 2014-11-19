FactoryGirl.define do
  factory :user do |user|
    user.display_name           { Faker::Name.name }
    user.email                  { Faker::Internet.email }
    user.password               "password"
    user.password_confirmation  "password"
  end
end
