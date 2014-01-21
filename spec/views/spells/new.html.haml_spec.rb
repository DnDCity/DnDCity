require 'spec_helper'

describe "spells/new" do
  before(:each) do
    assign(:spell, stub_model(Spell,
      :name => "MyString",
      :desc => "MyText"
    ).as_new_record)
  end

  it "renders new spell form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", spells_path, "post" do
      assert_select "input#spell_name[name=?]", "spell[name]"
      assert_select "textarea#spell_desc[name=?]", "spell[desc]"
    end
  end
end
