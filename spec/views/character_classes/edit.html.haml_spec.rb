require 'spec_helper'

describe "character_classes/edit" do
  before(:each) do
    @character_class = assign(:character_class, stub_model(CharacterClass,
      :name => "MyString",
      :desc => "MyText"
    ))
  end

  it "renders the edit character_class form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", character_class_path(@character_class), "post" do
      assert_select "input#character_class_name[name=?]", "character_class[name]"
      assert_select "textarea#character_class_desc[name=?]", "character_class[desc]"
    end
  end
end
