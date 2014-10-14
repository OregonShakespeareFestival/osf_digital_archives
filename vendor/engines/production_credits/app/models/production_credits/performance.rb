module ProductionCredits
  class Performance < ActiveRecord::Base
    belongs_to :production

    def name
      "#{production.work.title} - #{performed_at.strftime('%m/%d/%Y')}"
    end

  end
end
