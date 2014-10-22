# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :production_credits_role, :class => 'Role' do
    category "MyString"
    name "MyString"
    work nil
    production nil
  end
end
