require 'rails_helper'

RSpec.describe PostCategory, type: :model do
  context "testing factory" do
    it "should create post category" do
      create(:category, id:1)
      create(:post, id:1)
      expect(build(:post_category, category_id: 1, post_id: 1)).to be_valid
    end
  end
end
