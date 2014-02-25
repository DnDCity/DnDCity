require "spec_helper"

describe ClassSkillsController do
  describe "routing" do

    it "routes to #index" do
      get("/class_skills").should route_to("class_skills#index")
    end

    it "routes to #new" do
      get("/class_skills/new").should route_to("class_skills#new")
    end

    it "routes to #show" do
      get("/class_skills/1").should route_to("class_skills#show", :id => "1")
    end

    it "routes to #edit" do
      get("/class_skills/1/edit").should route_to("class_skills#edit", :id => "1")
    end

    it "routes to #create" do
      post("/class_skills").should route_to("class_skills#create")
    end

    it "routes to #update" do
      put("/class_skills/1").should route_to("class_skills#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/class_skills/1").should route_to("class_skills#destroy", :id => "1")
    end

  end
end
