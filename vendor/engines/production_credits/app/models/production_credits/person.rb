module ProductionCredits
  class Person < ActiveRecord::Base
    has_many :credits
    has_many :names

    def name
      denormalized_full_name
    end
  end
end
