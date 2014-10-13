module ProductionCredits
  class Person < ActiveRecord::Base
    has_many :credits
    has_many :names
  end
end
