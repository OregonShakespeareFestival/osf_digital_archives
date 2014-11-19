require 'rails_helper'

describe GenericFile do
  describe "#sanitized_exif_value" do
    let(:file) { GenericFile.new }

    it "converts every to strings" do
      file.send(:sanitized_exif_value, "foo").should == "foo"
      file.send(:sanitized_exif_value, 123).should == "123"
      file.send(:sanitized_exif_value, [:a, :b, :c]).should == "a, b, c"
    end
  end
end
