require 'rails_helper'

RSpec.describe "Coops", type: :request do
  describe "GET /coops" do
    it "works! (now write some real specs)" do
      get coops_path
      expect(response).to have_http_status(200)
    end
  end
end
