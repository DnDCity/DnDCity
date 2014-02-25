require 'spec_helper'

describe "class_skills/edit" do
  before(:each) do
    @class_skill = assign(:class_skill, stub_model(ClassSkill,
      :character_class => nil,
      :skill => nil,
      :subject => "MyString"
    ))
  end

  it "renders the edit class_skill form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", class_skill_path(@class_skill), "post" do
      assert_select "input#class_skill_character_class[name=?]", "class_skill[character_class]"
      assert_select "input#class_skill_skill[name=?]", "class_skill[skill]"
      assert_select "input#class_skill_subject[name=?]", "class_skill[subject]"
    end
  end
end
