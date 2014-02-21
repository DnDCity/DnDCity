require 'spec_helper'

describe "spell_levels/index" do
  before(:each) do
    assign(:spell_levels, [
      stub_model(SpellLevel,
        :spell => nil,
        :character_class => nil,
        :level => 1
      ),
      stub_model(SpellLevel,
        :spell => nil,
        :character_class => nil,
        :level => 1
      )
    ])
  end

  it "renders a list of spell_levels" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
