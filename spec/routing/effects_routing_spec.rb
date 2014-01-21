require "spec_helper"

describe EffectsController do
  describe "routing" do

    it "routes to #index" do
      get("/effects").should route_to("effects#index")
    end

    it "routes to #new" do
      get("/effects/new").should route_to("effects#new")
    end

    it "routes to #show" do
      get("/effects/1").should route_to("effects#show", :id => "1")
    end

    it "routes to #edit" do
      get("/effects/1/edit").should route_to("effects#edit", :id => "1")
    end

    it "routes to #create" do
      post("/effects").should route_to("effects#create")
    end

    it "routes to #update" do
      put("/effects/1").should route_to("effects#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/effects/1").should route_to("effects#destroy", :id => "1")
    end

  end
end
