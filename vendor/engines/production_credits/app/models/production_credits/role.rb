module ProductionCredits
  class Role < ActiveRecord::Base
    belongs_to :work
    belongs_to :production
    has_many :credits

    def category_enum
      ['Cast', 'Crew', 'Production', 'Direction', 'Writing', 'Department', 'Thanks']
    end
  end
end
