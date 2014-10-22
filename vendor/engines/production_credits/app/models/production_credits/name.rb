module ProductionCredits
  class Name < ActiveRecord::Base
    belongs_to :person
    belongs_to :venue

    validates_presence_of :full_name
    validates_presence_of :cannonized_at
    validates_presence_of :person_or_venue

    def name
      full_name
    end

    def person_or_venue
      if [self.person, self.venue].reject(&:blank?).size != 1
        errors[:base] << ("A Name must be associated with either a Person or a Venue")
      end
    end
    
  end
end
