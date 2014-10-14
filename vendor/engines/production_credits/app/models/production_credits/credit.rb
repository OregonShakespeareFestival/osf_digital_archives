module ProductionCredits
  class Credit < ActiveRecord::Base

    belongs_to :role
    belongs_to :person

    def credit_type_enum
      ['Cast', 'Crew', 'Production', 'Direction', 'Writing', 'Department', 'Thanks']
    end

    def name
      "#{person.denormalized_full_name} - #{role.name}"
    end
  end
end
