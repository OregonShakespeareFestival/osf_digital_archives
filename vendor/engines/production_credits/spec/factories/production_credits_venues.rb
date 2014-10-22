# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :production_credits_venue, :class => 'Venue' do
    denormalized_name "MyString"
    opened_on "2014-10-09"
  end
end
