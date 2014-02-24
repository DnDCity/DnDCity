require "spec_helper"

describe ConsumableItemsController do
  describe "routing" do

    it "routes to #index" do
      get("/consumable_items").should route_to("consumable_items#index")
    end

    it "routes to #new" do
      get("/consumable_items/new").should route_to("consumable_items#new")
    end

    it "routes to #show" do
      get("/consumable_items/1").should route_to("consumable_items#show", :id => "1")
    end

    it "routes to #edit" do
      get("/consumable_items/1/edit").should route_to("consumable_items#edit", :id => "1")
    end

    it "routes to #create" do
      post("/consumable_items").should route_to("consumable_items#create")
    end

    it "routes to #update" do
      put("/consumable_items/1").should route_to("consumable_items#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/consumable_items/1").should route_to("consumable_items#destroy", :id => "1")
    end

  end
end
