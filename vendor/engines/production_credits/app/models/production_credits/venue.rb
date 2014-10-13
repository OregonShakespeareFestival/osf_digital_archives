module ProductionCredits
  class Venue < ActiveRecord::Base
    has_many :names
  end
end
