module ProductionCredits
  class Venue < ActiveRecord::Base
    has_many :productions
    validates_presence_of :name
  end
end
