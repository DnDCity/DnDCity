require 'spec_helper'

describe "character_classes/index" do
  before(:each) do
    assign(:character_classes, [
      stub_model(CharacterClass,
        :name => "Name",
        :desc => "MyText",
        :class_abilities => "MyText",
        :hit_die => "Hit Die",
        :BAB_progression => "Bab Progression",
        :base_fort_progression => "Base Fort Progression",
        :base_ref_progression => "Base Ref Progression",
        :base_will_progression => "Base Will Progression",
        :skill_points_per_level => 1
      ),
      stub_model(CharacterClass,
        :name => "Name",
        :desc => "MyText",
        :class_abilities => "MyText",
        :hit_die => "Hit Die",
        :BAB_progression => "Bab Progression",
        :base_fort_progression => "Base Fort Progression",
        :base_ref_progression => "Base Ref Progression",
        :base_will_progression => "Base Will Progression",
        :skill_points_per_level => 1
      )
    ])
  end

  it "renders a list of character_classes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Hit Die".to_s, :count => 2
    assert_select "tr>td", :text => "Bab Progression".to_s, :count => 2
    assert_select "tr>td", :text => "Base Fort Progression".to_s, :count => 2
    assert_select "tr>td", :text => "Base Ref Progression".to_s, :count => 2
    assert_select "tr>td", :text => "Base Will Progression".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
