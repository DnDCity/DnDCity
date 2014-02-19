require 'spec_helper'

describe "spell_component_types/new" do
  before(:each) do
    assign(:spell_component_type, stub_model(SpellComponentType,
      :name => "MyString",
      :key => "MyString",
      :desc => "MyText"
    ).as_new_record)
  end

  it "renders new spell_component_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", spell_component_types_path, "post" do
      assert_select "input#spell_component_type_name[name=?]", "spell_component_type[name]"
      assert_select "input#spell_component_type_key[name=?]", "spell_component_type[key]"
      assert_select "textarea#spell_component_type_desc[name=?]", "spell_component_type[desc]"
    end
  end
end
