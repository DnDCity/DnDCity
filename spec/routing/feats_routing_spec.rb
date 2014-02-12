require "spec_helper"

describe FeatsController do
  describe "routing" do

    it "routes to #index" do
      get("/feats").should route_to("feats#index")
    end

    it "routes to #new" do
      get("/feats/new").should route_to("feats#new")
    end

    it "routes to #show" do
      get("/feats/1").should route_to("feats#show", :id => "1")
    end

    it "routes to #edit" do
      get("/feats/1/edit").should route_to("feats#edit", :id => "1")
    end

    it "routes to #create" do
      post("/feats").should route_to("feats#create")
    end

    it "routes to #update" do
      put("/feats/1").should route_to("feats#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/feats/1").should route_to("feats#destroy", :id => "1")
    end

  end
end
