require 'spec_helper'

describe "races/show" do
  before(:each) do
    @race = assign(:race, stub_model(Race,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(//)
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/4/)
    rendered.should match(/5/)
    rendered.should match(/6/)
    rendered.should match(/7/)
    rendered.should match(/8/)
    rendered.should match(/9/)
    rendered.should match(/10/)
  end
end
