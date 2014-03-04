require 'spec_helper'

describe "class_levels/index" do
  before(:each) do
    assign(:class_levels, [
      stub_model(ClassLevel,
        :character => nil,
        :character_class => nil,
        :class_level => 1
      ),
      stub_model(ClassLevel,
        :character => nil,
        :character_class => nil,
        :class_level => 1
      )
    ])
  end

  it "renders a list of class_levels" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
