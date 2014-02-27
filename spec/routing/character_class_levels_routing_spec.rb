require "spec_helper"

describe CharacterClassLevelsController do
  describe "routing" do

    it "routes to #index" do
      get("/character_class_levels").should route_to("character_class_levels#index")
    end

    it "routes to #new" do
      get("/character_class_levels/new").should route_to("character_class_levels#new")
    end

    it "routes to #show" do
      get("/character_class_levels/1").should route_to("character_class_levels#show", :id => "1")
    end

    it "routes to #edit" do
      get("/character_class_levels/1/edit").should route_to("character_class_levels#edit", :id => "1")
    end

    it "routes to #create" do
      post("/character_class_levels").should route_to("character_class_levels#create")
    end

    it "routes to #update" do
      put("/character_class_levels/1").should route_to("character_class_levels#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/character_class_levels/1").should route_to("character_class_levels#destroy", :id => "1")
    end

  end
end
