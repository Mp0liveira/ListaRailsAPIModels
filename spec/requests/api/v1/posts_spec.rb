require 'rails_helper'

RSpec.describe "Api::V1::Posts", type: :request do
  describe "POST /create" do
    let(:post_params) do
      attributes_for(:post)
    end
    context "when params are ok" do
      it "return https status created" do
        post "/api/v1/posts/create", params:{post: post_params}
        expect(response).to have_http_status(:created)
      end
    end
    context "when param are nil" do
      post_params = nil
      it "return http status bad request" do
        post "/api/v1/posts/create", params:{post: post_params}
        expect(response).to have_http_status(:bad_request)
      end
    end
    context "when param exceeds max characters" do
      title = "a" * 21
      post_params = {title: title, content: "test"}
      it "return http bad request" do
        post "/api/v1/posts/create", params:{post: post_params}
        expect(response).to have_http_status(:bad_request)
      end
    end
  end

  describe "PATCH /update/:id" do
    let(:post) {create(:post, title: "Fogo", content: "fogao ta embalado")}
    let(:post_params) do
      attributes_for(:post)
    end
    context "when params are ok" do
      it "return https status ok" do
        patch "/api/v1/posts/update/#{post.id}", params:{post: post_params}
        expect(response).to have_http_status(:ok)
      end
    end
  end
end
