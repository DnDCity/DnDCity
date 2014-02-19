require "spec_helper"

describe SpellSchoolsController do
  describe "routing" do

    it "routes to #index" do
      get("/spell_schools").should route_to("spell_schools#index")
    end

    it "routes to #new" do
      get("/spell_schools/new").should route_to("spell_schools#new")
    end

    it "routes to #show" do
      get("/spell_schools/1").should route_to("spell_schools#show", :id => "1")
    end

    it "routes to #edit" do
      get("/spell_schools/1/edit").should route_to("spell_schools#edit", :id => "1")
    end

    it "routes to #create" do
      post("/spell_schools").should route_to("spell_schools#create")
    end

    it "routes to #update" do
      put("/spell_schools/1").should route_to("spell_schools#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/spell_schools/1").should route_to("spell_schools#destroy", :id => "1")
    end

  end
end
