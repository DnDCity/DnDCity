require 'spec_helper'

describe "characters/new" do
  before(:each) do
    assign(:character, stub_model(Character,
      :name => "MyString",
      :user => nil,
      :base_str => 1,
      :base_dex => 1,
      :base_con => 1,
      :base_int => 1,
      :base_wis => 1,
      :base_cha => 1
    ).as_new_record)
  end

  it "renders new character form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", characters_path, "post" do
      assert_select "input#character_name[name=?]", "character[name]"
      assert_select "input#character_user[name=?]", "character[user]"
      assert_select "input#character_base_str[name=?]", "character[base_str]"
      assert_select "input#character_base_dex[name=?]", "character[base_dex]"
      assert_select "input#character_base_con[name=?]", "character[base_con]"
      assert_select "input#character_base_int[name=?]", "character[base_int]"
      assert_select "input#character_base_wis[name=?]", "character[base_wis]"
      assert_select "input#character_base_cha[name=?]", "character[base_cha]"
    end
  end
end
