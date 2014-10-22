# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :production_credits_person, :class => 'Person' do
    denormalized_full_name "MyString"
    disambiguation "MyString"
    date_of_birth "2014-10-09"
  end
end
