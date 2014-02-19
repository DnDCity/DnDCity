require "spec_helper"

describe SpellSubSchoolsController do
  describe "routing" do

    it "routes to #index" do
      get("/spell_sub_schools").should route_to("spell_sub_schools#index")
    end

    it "routes to #new" do
      get("/spell_sub_schools/new").should route_to("spell_sub_schools#new")
    end

    it "routes to #show" do
      get("/spell_sub_schools/1").should route_to("spell_sub_schools#show", :id => "1")
    end

    it "routes to #edit" do
      get("/spell_sub_schools/1/edit").should route_to("spell_sub_schools#edit", :id => "1")
    end

    it "routes to #create" do
      post("/spell_sub_schools").should route_to("spell_sub_schools#create")
    end

    it "routes to #update" do
      put("/spell_sub_schools/1").should route_to("spell_sub_schools#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/spell_sub_schools/1").should route_to("spell_sub_schools#destroy", :id => "1")
    end

  end
end
