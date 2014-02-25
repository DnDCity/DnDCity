require 'spec_helper'

describe "class_skills/show" do
  before(:each) do
    @class_skill = assign(:class_skill, stub_model(ClassSkill,
      :character_class => nil,
      :skill => nil,
      :subject => "Subject"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(/Subject/)
  end
end
