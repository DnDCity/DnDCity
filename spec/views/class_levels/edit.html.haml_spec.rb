require 'spec_helper'

describe "class_levels/edit" do
  before(:each) do
    @class_level = assign(:class_level, stub_model(ClassLevel,
      :character => nil,
      :character_class => nil,
      :class_level => 1
    ))
  end

  it "renders the edit class_level form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", class_level_path(@class_level), "post" do
      assert_select "input#class_level_character[name=?]", "class_level[character]"
      assert_select "input#class_level_character_class[name=?]", "class_level[character_class]"
      assert_select "input#class_level_class_level[name=?]", "class_level[class_level]"
    end
  end
end
