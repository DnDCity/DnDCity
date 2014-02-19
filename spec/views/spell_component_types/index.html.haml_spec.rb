require 'spec_helper'

describe "spell_component_types/index" do
  before(:each) do
    assign(:spell_component_types, [
      stub_model(SpellComponentType,
        :name => "Name",
        :key => "Key",
        :desc => "MyText"
      ),
      stub_model(SpellComponentType,
        :name => "Name",
        :key => "Key",
        :desc => "MyText"
      )
    ])
  end

  it "renders a list of spell_component_types" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Key".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
