# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :production_credits_name, :class => 'Name' do
    full_name "MyString"
    person nil
    venue nil
    cannonized_at "2014-10-09 11:52:47"
  end
end
