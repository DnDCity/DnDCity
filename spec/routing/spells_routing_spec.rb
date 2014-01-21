require "spec_helper"

describe SpellsController do
  describe "routing" do

    it "routes to #index" do
      get("/spells").should route_to("spells#index")
    end

    it "routes to #new" do
      get("/spells/new").should route_to("spells#new")
    end

    it "routes to #show" do
      get("/spells/1").should route_to("spells#show", :id => "1")
    end

    it "routes to #edit" do
      get("/spells/1/edit").should route_to("spells#edit", :id => "1")
    end

    it "routes to #create" do
      post("/spells").should route_to("spells#create")
    end

    it "routes to #update" do
      put("/spells/1").should route_to("spells#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/spells/1").should route_to("spells#destroy", :id => "1")
    end

  end
end
