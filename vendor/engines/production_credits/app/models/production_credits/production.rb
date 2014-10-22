module ProductionCredits
  class Production < ActiveRecord::Base
    belongs_to :work
    belongs_to :venue
    has_many :roles
    has_many :performances

    validates_presence_of :work
    validates_presence_of :open_on
    validates_presence_of :close_on

    def name
      work ? "#{work.title} - #{open_on.strftime('%m/%d/%Y')}" : ""
    end
  end
end
