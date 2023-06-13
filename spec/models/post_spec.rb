require 'rails_helper'

RSpec.describe Post, type: :model do
  context "testing factory" do
    it {expect(build(:post)).to be_valid}
  end
end
