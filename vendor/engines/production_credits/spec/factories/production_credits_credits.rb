# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :production_credits_credit, :class => 'Credit' do
    credit_type "MyString"
    work nil
    production nil
    performance nil
    role nil
    person nil
  end
end
