require 'rails_helper'

describe GenericFile do
  describe "#sanitized_exif_value" do
    let(:generic_file) { GenericFile.new }

    it "converts every to strings" do
      expect(generic_file.send(:sanitized_exif_value, "foo")).to eq "foo"
      expect(generic_file.send(:sanitized_exif_value, 123)).to eq "123"
      expect(generic_file.send(:sanitized_exif_value, [:a, :b, :c])).to eq "a, b, c"
    end
  end
end
