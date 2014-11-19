require 'rails_helper'

describe User do
  describe "#to_s" do
    let(:user) { FactoryGirl.build(:user, email: "jack.black@osfashland.org") }

    it "returns the email address of the User" do
      expect(user.to_s).to eq "jack.black@osfashland.org"
    end
  end
end
