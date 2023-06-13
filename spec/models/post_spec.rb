require 'rails_helper'

RSpec.describe Post, type: :model do
  context "testing factory" do
    it {expect(build(:post)).to be_valid}
  end

  context "testing title" do
    it "should be invalid if nil" do
      expect(build(:post, title: nil)).to be_invalid
    end
  end
end
