require 'spec_helper'

describe "class_skills/index" do
  before(:each) do
    assign(:class_skills, [
      stub_model(ClassSkill,
        :character_class => nil,
        :skill => nil,
        :subject => "Subject"
      ),
      stub_model(ClassSkill,
        :character_class => nil,
        :skill => nil,
        :subject => "Subject"
      )
    ])
  end

  it "renders a list of class_skills" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Subject".to_s, :count => 2
  end
end
