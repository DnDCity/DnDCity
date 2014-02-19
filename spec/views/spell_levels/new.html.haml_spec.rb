require 'spec_helper'

describe "spell_levels/new" do
  before(:each) do
    assign(:spell_level, stub_model(SpellLevel,
      :spell => nil,
      :character_class => nil,
      :level => 1
    ).as_new_record)
  end

  it "renders new spell_level form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", spell_levels_path, "post" do
      assert_select "input#spell_level_spell[name=?]", "spell_level[spell]"
      assert_select "input#spell_level_character_class[name=?]", "spell_level[character_class]"
      assert_select "input#spell_level_level[name=?]", "spell_level[level]"
    end
  end
end
