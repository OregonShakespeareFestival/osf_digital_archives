# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :production_credits_production, :class => 'Production' do
    work nil
    open_on "2014-10-09"
    close_on "2014-10-09"
  end
end
