require 'spec_helper'

describe "character_levels/show" do
  before(:each) do
    @character_level = assign(:character_level, stub_model(CharacterLevel,
      :character => "",
      :level => 1,
      :character_class => nil,
      :class_level => 2,
      :hp => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(/1/)
    rendered.should match(//)
    rendered.should match(/2/)
    rendered.should match(/3/)
  end
end
