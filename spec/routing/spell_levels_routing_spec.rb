require "spec_helper"

describe SpellLevelsController do
  describe "routing" do

    it "routes to #index" do
      get("/spell_levels").should route_to("spell_levels#index")
    end

    it "routes to #new" do
      get("/spell_levels/new").should route_to("spell_levels#new")
    end

    it "routes to #show" do
      get("/spell_levels/1").should route_to("spell_levels#show", :id => "1")
    end

    it "routes to #edit" do
      get("/spell_levels/1/edit").should route_to("spell_levels#edit", :id => "1")
    end

    it "routes to #create" do
      post("/spell_levels").should route_to("spell_levels#create")
    end

    it "routes to #update" do
      put("/spell_levels/1").should route_to("spell_levels#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/spell_levels/1").should route_to("spell_levels#destroy", :id => "1")
    end

  end
end
