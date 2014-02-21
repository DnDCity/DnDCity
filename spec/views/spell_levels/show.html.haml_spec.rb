require 'spec_helper'

describe "spell_levels/show" do
  before(:each) do
    @spell_level = assign(:spell_level, stub_model(SpellLevel,
      :spell => nil,
      :character_class => nil,
      :level => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(/1/)
  end
end
