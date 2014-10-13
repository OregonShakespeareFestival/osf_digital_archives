module ProductionCredits
  class Role < ActiveRecord::Base
    belongs_to :work
    belongs_to :production
    has_many :credits
  end
end
