require 'rails_helper'

RSpec.describe Commentary, type: :model do
  context "testing factory" do
    it "should be created if post exists" do
      create(:post, id: 1)
      expect(create(:commentary, post_id: 1)).to be_valid
    end
  end
end
