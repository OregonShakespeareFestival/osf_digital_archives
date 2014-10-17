module ProductionCredits
  class Work < ActiveRecord::Base
    has_many :productions
    has_many :roles

    validates_presence_of :title
    validates_presence_of :medium
    validates_presence_of :year
  end
end
