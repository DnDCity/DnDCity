require 'spec_helper'

describe "character_levels/edit" do
  before(:each) do
    @character_level = assign(:character_level, stub_model(CharacterLevel,
      :character => "",
      :level => 1,
      :character_class => nil,
      :class_level => 1,
      :hp => 1
    ))
  end

  it "renders the edit character_level form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", character_level_path(@character_level), "post" do
      assert_select "input#character_level_character[name=?]", "character_level[character]"
      assert_select "input#character_level_level[name=?]", "character_level[level]"
      assert_select "input#character_level_character_class[name=?]", "character_level[character_class]"
      assert_select "input#character_level_class_level[name=?]", "character_level[class_level]"
      assert_select "input#character_level_hp[name=?]", "character_level[hp]"
    end
  end
end
