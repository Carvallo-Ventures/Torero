require 'rails_helper'

RSpec.describe "RotationUpdates", type: :request do
  describe "GET /rotation_updates" do
    it "works! (now write some real specs)" do
      get rotation_updates_path
      expect(response).to have_http_status(200)
    end
  end
end
