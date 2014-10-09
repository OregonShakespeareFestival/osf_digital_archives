module ProductionCredits
  class Name < ActiveRecord::Base
    belongs_to :person
    belongs_to :venue
  end
end
