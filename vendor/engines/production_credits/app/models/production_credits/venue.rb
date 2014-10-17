module ProductionCredits
  class Venue < ActiveRecord::Base
    has_many :names
    has_many :productions
    has_many :performances

    validates_presence_of :denormalized_name
    validates_presence_of :opened_on

    def name
      denormalized_name
    end
  end
end
