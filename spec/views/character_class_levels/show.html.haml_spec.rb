require 'spec_helper'

describe "character_class_levels/show" do
  before(:each) do
    @character_class_level = assign(:character_class_level, stub_model(CharacterClassLevel,
      :character => nil,
      :character_class => nil,
      :class_level => 1
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
