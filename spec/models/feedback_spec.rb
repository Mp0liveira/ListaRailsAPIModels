require 'rails_helper'

RSpec.describe Feedback, type: :model do
  context "testing factory" do
    it "should be created if post exists" do
      create(:post, id: 1)
      expect(create(:feedback, post_id: 1)).to be_valid
    end
  end
end
