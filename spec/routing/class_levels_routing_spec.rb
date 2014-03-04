require "spec_helper"

describe ClassLevelsController do
  describe "routing" do

    it "routes to #index" do
      get("/class_levels").should route_to("class_levels#index")
    end

    it "routes to #new" do
      get("/class_levels/new").should route_to("class_levels#new")
    end

    it "routes to #show" do
      get("/class_levels/1").should route_to("class_levels#show", :id => "1")
    end

    it "routes to #edit" do
      get("/class_levels/1/edit").should route_to("class_levels#edit", :id => "1")
    end

    it "routes to #create" do
      post("/class_levels").should route_to("class_levels#create")
    end

    it "routes to #update" do
      put("/class_levels/1").should route_to("class_levels#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/class_levels/1").should route_to("class_levels#destroy", :id => "1")
    end

  end
end
