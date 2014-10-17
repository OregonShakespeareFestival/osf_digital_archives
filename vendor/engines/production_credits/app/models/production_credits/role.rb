module ProductionCredits
  class Role < ActiveRecord::Base
    belongs_to :work
    belongs_to :production
    has_many :credits

    validates_presence_of :category
    validates_presence_of :name
    #check belongs to one and only one work/production

    def category_enum
      ['Cast', 'Crew', 'Production', 'Direction', 'Writing', 'Department', 'Thanks']
    end
  end
end
