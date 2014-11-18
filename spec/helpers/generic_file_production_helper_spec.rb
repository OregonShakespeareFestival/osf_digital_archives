require 'rails_helper'

describe GenericFileProductionHelper do
  describe "#production_names" do
    subject { helper.production_names }

    context "with no Productions in the database" do
      it { should be_empty }
    end

    context "with Productions in the database" do
      let!(:production_1) { FactoryGirl.create(:production_credits_production, production_name: "Beautiful Creatures") }
      let!(:production_2) { FactoryGirl.create(:production_credits_production, production_name: "Apple") }

      it "returns a sorted list of the names" do
        should == ["Apple", "Beautiful Creatures"]
      end
    end
  end
end
