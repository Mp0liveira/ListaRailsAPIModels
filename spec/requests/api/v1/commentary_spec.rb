require 'rails_helper'

RSpec.describe "Api::V1::Commentaries", type: :request do
  describe "POST /create" do
    let(:commentary_params) do
      attributes_for(:commentary)
    end
    context "when params are ok" do
      it "return http status created" do
        post "/api/vi/commentary/create", params: {commentary: commentary_params}
        expect(response).to have_http_status(:created)
      end
    end
  end
end
