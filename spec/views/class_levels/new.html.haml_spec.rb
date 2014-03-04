require 'spec_helper'

describe "class_levels/new" do
  before(:each) do
    assign(:class_level, stub_model(ClassLevel,
      :character => nil,
      :character_class => nil,
      :class_level => 1
    ).as_new_record)
  end

  it "renders new class_level form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", class_levels_path, "post" do
      assert_select "input#class_level_character[name=?]", "class_level[character]"
      assert_select "input#class_level_character_class[name=?]", "class_level[character_class]"
      assert_select "input#class_level_class_level[name=?]", "class_level[class_level]"
    end
  end
end
