require 'spec_helper'

describe "weapons/new" do
  before(:each) do
    assign(:weapon, stub_model(Weapon,
      :name => "MyString",
      :desc => "MyText",
      :user => nil,
      :damages => "MyString",
      :damagem => "MyString",
      :critical => "MyString",
      :rangeincrement => 1.5,
      :weight => 1.5,
      :isthrowable => false,
      :islight => false,
      :isonehanded => false,
      :istwohanded => false,
      :type => "MyText"
    ).as_new_record)
  end

  it "renders new weapon form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", weapons_path, "post" do
      assert_select "input#weapon_name[name=?]", "weapon[name]"
      assert_select "textarea#weapon_desc[name=?]", "weapon[desc]"
      assert_select "input#weapon_user[name=?]", "weapon[user]"
      assert_select "input#weapon_damages[name=?]", "weapon[damages]"
      assert_select "input#weapon_damagem[name=?]", "weapon[damagem]"
      assert_select "input#weapon_critical[name=?]", "weapon[critical]"
      assert_select "input#weapon_rangeincrement[name=?]", "weapon[rangeincrement]"
      assert_select "input#weapon_weight[name=?]", "weapon[weight]"
      assert_select "input#weapon_isthrowable[name=?]", "weapon[isthrowable]"
      assert_select "input#weapon_islight[name=?]", "weapon[islight]"
      assert_select "input#weapon_isonehanded[name=?]", "weapon[isonehanded]"
      assert_select "input#weapon_istwohanded[name=?]", "weapon[istwohanded]"
      assert_select "textarea#weapon_type[name=?]", "weapon[type]"
    end
  end
end
