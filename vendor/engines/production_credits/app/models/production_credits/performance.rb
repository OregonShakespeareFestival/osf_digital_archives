module ProductionCredits
  class Performance < ActiveRecord::Base
    belongs_to :production
    belongs_to :specific_venue, class_name: "Venue", foreign_key: :venue_id

    def venue
      return specific_venue if specific_venue
      production.venue if production
    end

    def name
      return "" unless production
      "#{production.work.title} - #{performed_at.strftime('%m/%d/%Y')}"
    end

  end
end
