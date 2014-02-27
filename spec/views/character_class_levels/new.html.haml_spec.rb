require 'spec_helper'

describe "character_class_levels/new" do
  before(:each) do
    assign(:character_class_level, stub_model(CharacterClassLevel,
      :character => nil,
      :character_class => nil,
      :class_level => 1
    ).as_new_record)
  end

  it "renders new character_class_level form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", character_class_levels_path, "post" do
      assert_select "input#character_class_level_character[name=?]", "character_class_level[character]"
      assert_select "input#character_class_level_character_class[name=?]", "character_class_level[character_class]"
      assert_select "input#character_class_level_class_level[name=?]", "character_class_level[class_level]"
    end
  end
end
