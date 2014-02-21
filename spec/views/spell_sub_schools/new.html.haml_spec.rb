require 'spec_helper'

describe "spell_sub_schools/new" do
  before(:each) do
    assign(:spell_sub_school, stub_model(SpellSubSchool,
      :name => "MyString",
      :desc => "MyText",
      :spell_school => nil
    ).as_new_record)
  end

  it "renders new spell_sub_school form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", spell_sub_schools_path, "post" do
      assert_select "input#spell_sub_school_name[name=?]", "spell_sub_school[name]"
      assert_select "textarea#spell_sub_school_desc[name=?]", "spell_sub_school[desc]"
      assert_select "input#spell_sub_school_spell_school[name=?]", "spell_sub_school[spell_school]"
    end
  end
end
