# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :production_credits_work, :class => 'Work' do
    title "MyString"
    medium "MyString"
    year 1
  end
end
