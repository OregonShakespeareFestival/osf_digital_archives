module ProductionCredits
  class Credit < ActiveRecord::Base
    belongs_to :role
    belongs_to :person
    belongs_to :alias, class_name: "Name", foreign_key: :name_id

    validates_presence_of :credit_type
    validates_presence_of :role
    validates_presence_of :person
    validates_presence_of :alias

    def credit_type_enum
      ['Original', 'Understudy', 'Swing', 'Cover']
    end

    def name
      person ? "#{person.denormalized_full_name} - #{role.name}" : ""
    end
  end
end
