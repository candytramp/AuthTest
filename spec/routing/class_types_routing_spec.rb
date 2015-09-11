require "rails_helper"

RSpec.describe ClassTypesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/class_types").to route_to("class_types#index")
    end

    it "routes to #new" do
      expect(:get => "/class_types/new").to route_to("class_types#new")
    end

    it "routes to #show" do
      expect(:get => "/class_types/1").to route_to("class_types#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/class_types/1/edit").to route_to("class_types#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/class_types").to route_to("class_types#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/class_types/1").to route_to("class_types#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/class_types/1").to route_to("class_types#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/class_types/1").to route_to("class_types#destroy", :id => "1")
    end

  end
end
