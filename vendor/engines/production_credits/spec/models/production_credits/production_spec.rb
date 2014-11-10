require 'spec_helper'

module ProductionCredits
  describe Production, :type => :model do
    it {should belong_to :work}
  end
end
