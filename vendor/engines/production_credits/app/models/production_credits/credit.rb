module ProductionCredits
  class Credit < ActiveRecord::Base
    # belongs_to :work, :through => :role
    belongs_to :production
    belongs_to :performance
    belongs_to :role
    belongs_to :person
  end
end
