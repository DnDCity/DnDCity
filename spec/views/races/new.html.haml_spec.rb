require 'spec_helper'

describe "races/new" do
  before(:each) do
    assign(:race, stub_model(Race,
      :name => "MyString",
      :desc => "",
      :speed => 1,
      :str => 1,
      :dex => 1,
      :con => 1,
      :int => 1,
      :wis => 1,
      :cha => 1,
      :bonus_feat => 1,
      :bonus_skill_points => 1,
      :bonus_skill_points_per_level => 1
    ).as_new_record)
  end

  it "renders new race form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", races_path, "post" do
      assert_select "input#race_name[name=?]", "race[name]"
      assert_select "input#race_desc[name=?]", "race[desc]"
      assert_select "input#race_speed[name=?]", "race[speed]"
      assert_select "input#race_str[name=?]", "race[str]"
      assert_select "input#race_dex[name=?]", "race[dex]"
      assert_select "input#race_con[name=?]", "race[con]"
      assert_select "input#race_int[name=?]", "race[int]"
      assert_select "input#race_wis[name=?]", "race[wis]"
      assert_select "input#race_cha[name=?]", "race[cha]"
      assert_select "input#race_bonus_feat[name=?]", "race[bonus_feat]"
      assert_select "input#race_bonus_skill_points[name=?]", "race[bonus_skill_points]"
      assert_select "input#race_bonus_skill_points_per_level[name=?]", "race[bonus_skill_points_per_level]"
    end
  end
end
