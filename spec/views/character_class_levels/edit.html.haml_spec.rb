require 'spec_helper'

describe "character_class_levels/edit" do
  before(:each) do
    @character_class_level = assign(:character_class_level, stub_model(CharacterClassLevel,
      :character => nil,
      :character_class => nil,
      :class_level => 1
    ))
  end

  it "renders the edit character_class_level form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", character_class_level_path(@character_class_level), "post" do
      assert_select "input#character_class_level_character[name=?]", "character_class_level[character]"
      assert_select "input#character_class_level_character_class[name=?]", "character_class_level[character_class]"
      assert_select "input#character_class_level_class_level[name=?]", "character_class_level[class_level]"
    end
  end
end
