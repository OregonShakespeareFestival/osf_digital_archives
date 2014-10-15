module ProductionCredits
  class Venue < ActiveRecord::Base
    has_many :names
    has_many :productions
    has_many :performances

    def name
      denormalized_name
    end
  end
end
