require "spec_helper"

describe FeatTypesController do
  describe "routing" do

    it "routes to #index" do
      get("/feat_types").should route_to("feat_types#index")
    end

    it "routes to #new" do
      get("/feat_types/new").should route_to("feat_types#new")
    end

    it "routes to #show" do
      get("/feat_types/1").should route_to("feat_types#show", :id => "1")
    end

    it "routes to #edit" do
      get("/feat_types/1/edit").should route_to("feat_types#edit", :id => "1")
    end

    it "routes to #create" do
      post("/feat_types").should route_to("feat_types#create")
    end

    it "routes to #update" do
      put("/feat_types/1").should route_to("feat_types#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/feat_types/1").should route_to("feat_types#destroy", :id => "1")
    end

  end
end
