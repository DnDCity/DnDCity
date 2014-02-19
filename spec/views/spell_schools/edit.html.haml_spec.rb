require 'spec_helper'

describe "spell_schools/edit" do
  before(:each) do
    @spell_school = assign(:spell_school, stub_model(SpellSchool,
      :name => "MyString",
      :desc => "MyText"
    ))
  end

  it "renders the edit spell_school form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", spell_school_path(@spell_school), "post" do
      assert_select "input#spell_school_name[name=?]", "spell_school[name]"
      assert_select "textarea#spell_school_desc[name=?]", "spell_school[desc]"
    end
  end
end
