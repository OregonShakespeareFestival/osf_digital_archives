module ProductionCredits
  class Production < ActiveRecord::Base
    belongs_to :work
    has_many :roles
    has_many :performances


    def name
      "#{work.title} - #{open_on.strftime('%m/%d/%Y')}"
    end
  end
end
