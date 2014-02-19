require 'spec_helper'

describe "spell_levels/edit" do
  before(:each) do
    @spell_level = assign(:spell_level, stub_model(SpellLevel,
      :spell => nil,
      :character_class => nil,
      :level => 1
    ))
  end

  it "renders the edit spell_level form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", spell_level_path(@spell_level), "post" do
      assert_select "input#spell_level_spell[name=?]", "spell_level[spell]"
      assert_select "input#spell_level_character_class[name=?]", "spell_level[character_class]"
      assert_select "input#spell_level_level[name=?]", "spell_level[level]"
    end
  end
end
