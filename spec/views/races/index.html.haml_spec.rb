require 'spec_helper'

describe "races/index" do
  before(:each) do
    assign(:races, [
      stub_model(Race,
        :name => "Name",
        :desc => "",
        :speed => 1,
        :str => 2,
        :dex => 3,
        :con => 4,
        :int => 5,
        :wis => 6,
        :cha => 7,
        :bonus_feat => 8,
        :bonus_skill_points => 9,
        :bonus_skill_points_per_level => 10
      ),
      stub_model(Race,
        :name => "Name",
        :desc => "",
        :speed => 1,
        :str => 2,
        :dex => 3,
        :con => 4,
        :int => 5,
        :wis => 6,
        :cha => 7,
        :bonus_feat => 8,
        :bonus_skill_points => 9,
        :bonus_skill_points_per_level => 10
      )
    ])
  end

  it "renders a list of races" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => 6.to_s, :count => 2
    assert_select "tr>td", :text => 7.to_s, :count => 2
    assert_select "tr>td", :text => 8.to_s, :count => 2
    assert_select "tr>td", :text => 9.to_s, :count => 2
    assert_select "tr>td", :text => 10.to_s, :count => 2
  end
end
