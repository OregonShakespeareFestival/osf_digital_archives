module ProductionCredits
  class Production < ActiveRecord::Base
    belongs_to :work
    has_many :roles
    has_many :performances
  end
end
