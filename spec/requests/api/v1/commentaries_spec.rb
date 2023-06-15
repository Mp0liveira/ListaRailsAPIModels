require 'rails_helper'

RSpec.describe "Api::V1::Commentaries", type: :request do
  describe "POST /create" do
    let(:post1) {create(:post, title: "Fogo", content: "fogao ta embalado")}
    let(:commentary_params) do
      attributes_for(:commentary)
    end
    context "when params are ok" do
      it "return http status created" do
        post "/api/v1/posts/#{post1.id}/commentaries/create", params:{commentary: commentary_params}
        expect(response).to have_http_status(:created)
      end
    end
    context "when params are nil" do
      commentary_params = nil
      it "return http status bad request" do
        post "/api/v1/posts/#{post1.id}/commentaries/create", params:{commentary: commentary_params}
        expect(response).to have_http_status(:bad_request)
      end
    end
  end

  describe "PATCH /update/:id" do
    let(:post1) {create(:post, title: "Fogo", content: "fogao ta embalado")}
    let(:commentary1) {create(:commentary, content: "testando os comentarios", post_id: post1.id)}
    let(:commentary_params) do
      attributes_for(:commentary)
    end
    context "when commentary exists" do
      it "return http status ok" do
        patch "/api/v1/posts/#{post1.id}/commentaries/update/#{commentary1.id}", params:{commentary: commentary_params}
        expect(response).to have_http_status(:ok)
      end
    end
  end

  describe "DELETE /delete/:id" do
    let(:post1) {create(:post, title: "Fogo", content: "fogao ta embalado")}
    let(:commentary1) {create(:commentary, content: "testando", post_id: post1.id)}
    context "when commentary exists" do
      it "return http status ok" do
        delete "/api/v1/posts/#{post1.id}/commentaries/delete/#{commentary1.id}"
        expect(response).to have_http_status(:ok)
      end
    end
  end
end