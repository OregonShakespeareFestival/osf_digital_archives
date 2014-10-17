module ProductionCredits
  class Name < ActiveRecord::Base
    belongs_to :person
    belongs_to :venue

    validates_presence_of :full_name
    validates_presence_of :cannonized_at

    def name
      full_name
    end
  end
end
