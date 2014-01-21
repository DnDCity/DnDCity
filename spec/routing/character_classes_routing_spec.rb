require "spec_helper"

describe CharacterClassesController do
  describe "routing" do

    it "routes to #index" do
      get("/character_classes").should route_to("character_classes#index")
    end

    it "routes to #new" do
      get("/character_classes/new").should route_to("character_classes#new")
    end

    it "routes to #show" do
      get("/character_classes/1").should route_to("character_classes#show", :id => "1")
    end

    it "routes to #edit" do
      get("/character_classes/1/edit").should route_to("character_classes#edit", :id => "1")
    end

    it "routes to #create" do
      post("/character_classes").should route_to("character_classes#create")
    end

    it "routes to #update" do
      put("/character_classes/1").should route_to("character_classes#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/character_classes/1").should route_to("character_classes#destroy", :id => "1")
    end

  end
end
