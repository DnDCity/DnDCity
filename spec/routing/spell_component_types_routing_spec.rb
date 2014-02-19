require "spec_helper"

describe SpellComponentTypesController do
  describe "routing" do

    it "routes to #index" do
      get("/spell_component_types").should route_to("spell_component_types#index")
    end

    it "routes to #new" do
      get("/spell_component_types/new").should route_to("spell_component_types#new")
    end

    it "routes to #show" do
      get("/spell_component_types/1").should route_to("spell_component_types#show", :id => "1")
    end

    it "routes to #edit" do
      get("/spell_component_types/1/edit").should route_to("spell_component_types#edit", :id => "1")
    end

    it "routes to #create" do
      post("/spell_component_types").should route_to("spell_component_types#create")
    end

    it "routes to #update" do
      put("/spell_component_types/1").should route_to("spell_component_types#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/spell_component_types/1").should route_to("spell_component_types#destroy", :id => "1")
    end

  end
end
