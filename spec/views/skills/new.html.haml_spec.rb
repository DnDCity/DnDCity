require 'spec_helper'

describe "skills/new" do
  before(:each) do
    assign(:skill, stub_model(Skill,
      :name => "MyString",
      :desc => "MyText"
    ).as_new_record)
  end

  it "renders new skill form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", skills_path, "post" do
      assert_select "input#skill_name[name=?]", "skill[name]"
      assert_select "textarea#skill_desc[name=?]", "skill[desc]"
    end
  end
end
