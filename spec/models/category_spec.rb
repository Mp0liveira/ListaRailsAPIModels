require 'rails_helper'

RSpec.describe Category, type: :model do
  context "testing factory" do
  it {expect(build(:category)).to be_valid}
  end

  context "validating name" do
    it "should be invalid if name nil" do
      expect(build(:category, name:nil)).to be_invalid
    end
    it "should be invalid if repetead" do
      create(:category, name: "test")
      expect(build(:category, name: "test")).to be_invalid
    end
    it "should be invalid if exceeds max characters" do
      name = "a" * 51
      expect(build(:category, name: name)).to be_invalid
    end
  end

  context "validating description" do
    it "should be invalid if description nil" do
      expect(build(:category, description:nil)).to be_invalid
    end
    it "should be invalid if repeated" do
      create(:category, description: "test")
      expect(build(:category, description: "test")).to be_invalid
    end
    it "should be invalid if exceeds max characters" do
      description = "a" * 10001
      expect(build(:category, description: description)).to be_invalid
    end
  end
end
