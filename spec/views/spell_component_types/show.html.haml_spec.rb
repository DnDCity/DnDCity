require 'spec_helper'

describe "spell_component_types/show" do
  before(:each) do
    @spell_component_type = assign(:spell_component_type, stub_model(SpellComponentType,
      :name => "Name",
      :key => "Key",
      :desc => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Key/)
    rendered.should match(/MyText/)
  end
end
