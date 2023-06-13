require 'rails_helper'

RSpec.describe Commentary, type: :model do
  context "testing factory" do
    it "should be created if post exists" do
      create(:post, id: 1)
      expect(create(:commentary, post_id: 1)).to be_valid
    end
    it "should not be created if post doesn't exist" do
      expect(build(:commentary)).to be_invalid
    end
  end
  context "testing content" do
    it "should not be valid if content is nil" do
      create(:post, id: 1)
      expect(build(:commentary, post_id: 1, content: nil)).to be_invalid
    end
  end
end
