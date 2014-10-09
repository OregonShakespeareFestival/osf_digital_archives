# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :production_credits_performance, :class => 'Performance' do
    performed_at "2014-10-09 11:51:26"
    production nil
  end
end
