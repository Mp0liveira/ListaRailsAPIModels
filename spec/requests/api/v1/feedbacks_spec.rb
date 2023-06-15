require 'rails_helper'

RSpec.describe "Api::V1::Feedbacks", type: :request do
  describe "POST /create" do
    let(:post1) {create(:post, title: "Fogo", content: "fogao ta embalado")}
    let(:feedbacks_params) do
      attributes_for(:feedback)
    end
    context "when params are ok" do
      it "return https status ok" do
        post "/api/v1/posts/#{post1.id}/feedbacks/create", params:{feedback: feedbacks_params}
        expect(response).to have_http_status(:created)
      end
    end
    context "when params are nil" do
      feedbacks_params = nil
      it "return https status bad request" do
        post "/api/v1/posts/#{post1.id}/feedbacks/create", params:{feedback: feedbacks_params}
        expect(response).to have_http_status(:bad_request)
      end
    end
  end
end
