require 'rails_helper'

RSpec.describe Feedback, type: :model do
  context "testing factory" do
    it "should be created if post exists" do
      create(:post, id: 1)
      expect(create(:feedback, post_id: 1)).to be_valid
    end
    it "should not be created if post doesn't exist" do
      expect(build(:feedback, post_id: nil)).to be_invalid
    end
  end
end
