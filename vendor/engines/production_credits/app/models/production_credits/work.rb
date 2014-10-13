module ProductionCredits
  class Work < ActiveRecord::Base
    has_many :productions
    has_many :credits
    has_many :roles

  end
end
