require 'spec_helper'

describe "character_classes/new" do
  before(:each) do
    assign(:character_class, stub_model(CharacterClass,
      :name => "MyString",
      :desc => "MyText"
    ).as_new_record)
  end

  it "renders new character_class form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", character_classes_path, "post" do
      assert_select "input#character_class_name[name=?]", "character_class[name]"
      assert_select "textarea#character_class_desc[name=?]", "character_class[desc]"
    end
  end
end
