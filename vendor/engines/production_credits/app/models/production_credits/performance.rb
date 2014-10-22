module ProductionCredits
  class Performance < ActiveRecord::Base
    belongs_to :production
    belongs_to :specific_venue, class_name: "Venue", foreign_key: :venue_id

    validates_presence_of :production
    validates_presence_of :performed_at

    def venue
      return specific_venue if specific_venue
      production.venue if production
    end

    def name
      production ? "#{production.work.title} - #{performed_at.strftime('%m/%d/%Y')}" : ""
    end

  end
end
