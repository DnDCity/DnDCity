require 'spec_helper'

describe "class_skills/new" do
  before(:each) do
    assign(:class_skill, stub_model(ClassSkill,
      :character_class => nil,
      :skill => nil,
      :subject => "MyString"
    ).as_new_record)
  end

  it "renders new class_skill form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", class_skills_path, "post" do
      assert_select "input#class_skill_character_class[name=?]", "class_skill[character_class]"
      assert_select "input#class_skill_skill[name=?]", "class_skill[skill]"
      assert_select "input#class_skill_subject[name=?]", "class_skill[subject]"
    end
  end
end
