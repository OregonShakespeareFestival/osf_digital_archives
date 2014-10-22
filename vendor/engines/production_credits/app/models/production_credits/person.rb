module ProductionCredits
  class Person < ActiveRecord::Base
    has_many :credits
    has_many :names

    validates_presence_of :denormalized_full_name
    validates_presence_of :date_of_birth
    validates_presence_of :names

    def name
      denormalized_full_name
    end
  end
end
