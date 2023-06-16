require 'rails_helper'

RSpec.describe "Api::V1::Posts", type: :request do
  describe "GET /show" do
    let(:post) { create(:post, title: "test", content: "testing") }

    context "when the post exists" do
      it "returns the post details" do
        get "/api/v1/posts/show/#{post.id}"
        expect(response).to have_http_status(:ok)

        post_response = JSON.parse(response.body)
        expect(post_response["name"]).to eq("test")
        expect(post_response["description"]).to eq("testing")
      end
    end

    context "when the post does not exist" do
      it "returns a not found error" do
        get "/api/v1/posts/show/999"
        expect(response).to have_http_status(:not_found)
      end
    end
  end
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
    let(:post1) {create(:post, title: "Fogo", content: "fogao ta embalado")}
    let(:post_params) do
      attributes_for(:post)
    end
    context "when params are ok" do
      it "return https status ok" do
        patch "/api/v1/posts/update/#{post1.id}", params:{post: post_params}
        expect(response).to have_http_status(:ok)
      end
    end
  end

  describe "DELETE /delete/:id" do
    let(:post1) {create(:post, title: "fogudo", content: "fogao ta embalado")}
    context "when post exists" do
      it "return https status ok" do
        delete "/api/v1/posts/delete/#{post1.id}"
        expect(response).to have_http_status(:ok)
      end
    end
  end
end
