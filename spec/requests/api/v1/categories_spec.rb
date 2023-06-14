require 'rails_helper'

RSpec.describe "Api::V1::Categories", type: :request do
  describe "POST /create" do
    let(:category_params) do
      attributes_for(:category)
    end
    context "when params are ok" do
      it "return https status created" do
        post "/api/v1/categories/create", params:{category: category_params}
        expect(response).to have_http_status(:created)
      end
    end
  end
end
