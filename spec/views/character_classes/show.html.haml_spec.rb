require 'spec_helper'

describe "character_classes/show" do
  before(:each) do
    @character_class = assign(:character_class, stub_model(CharacterClass,
      :name => "Name",
      :desc => "MyText",
      :class_abilities => "MyText",
      :hit_die => "Hit Die",
      :BAB_progression => "Bab Progression",
      :base_fort_progression => "Base Fort Progression",
      :base_ref_progression => "Base Ref Progression",
      :base_will_progression => "Base Will Progression",
      :skill_points_per_level => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/MyText/)
    rendered.should match(/MyText/)
    rendered.should match(/Hit Die/)
    rendered.should match(/Bab Progression/)
    rendered.should match(/Base Fort Progression/)
    rendered.should match(/Base Ref Progression/)
    rendered.should match(/Base Will Progression/)
    rendered.should match(/1/)
  end
end
