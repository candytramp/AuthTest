require 'rails_helper'

RSpec.describe "ClassTypes", type: :request do
  describe "GET /class_types" do
    it "works! (now write some real specs)" do
      get class_types_path
      expect(response).to have_http_status(200)
    end
  end
end
