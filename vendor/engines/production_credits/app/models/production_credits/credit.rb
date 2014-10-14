module ProductionCredits
  class Credit < ActiveRecord::Base

    belongs_to :role
    belongs_to :person


    def name
      "#{person.denormalized_full_name} - #{role.name}"
    end
  end
end
