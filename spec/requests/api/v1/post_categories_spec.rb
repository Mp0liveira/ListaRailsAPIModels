require 'rails_helper'

RSpec.describe "Api::V1::PostCategories", type: :request do
  describe "POST /create" do
    let(:post1) {create(:post, title: "Fogo", content: "fogao ta embalado")}
    let(:category1) {create(:category, name: "Esportes", description: "Tudo sobre esportes")}
    context "when params are ok" do
      it "return http status created" do
        post "/api/v1/posts/#{post1.id}/post_categories/create", params:{category_id: category1.id}
        expect(response).to have_http_status(:created)
      end
    end
  end
end
