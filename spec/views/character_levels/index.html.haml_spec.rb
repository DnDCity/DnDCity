require 'spec_helper'

describe "character_levels/index" do
  before(:each) do
    assign(:character_levels, [
      stub_model(CharacterLevel,
        :character => "",
        :level => 1,
        :character_class => nil,
        :class_level => 2,
        :hp => 3
      ),
      stub_model(CharacterLevel,
        :character => "",
        :level => 1,
        :character_class => nil,
        :class_level => 2,
        :hp => 3
      )
    ])
  end

  it "renders a list of character_levels" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
