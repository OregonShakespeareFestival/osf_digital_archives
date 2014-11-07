module ProductionCredits
  class Production < ActiveRecord::Base

    validates_presence_of :production_name
    validates_presence_of :open_on
    validates_presence_of :close_on

    def category_enum
      ['OSF Standard', 'Black Cyngnet', 'Vining Repertory', 'Green Show', 'Other']
    end

    def name
      production_name
    end
  end
end
