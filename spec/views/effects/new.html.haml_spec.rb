require 'spec_helper'

describe "effects/new" do
  before(:each) do
    assign(:effect, stub_model(Effect,
      :name => "MyString",
      :desc => "MyText",
      :effects => "MyText"
    ).as_new_record)
  end

  it "renders new effect form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", effects_path, "post" do
      assert_select "input#effect_name[name=?]", "effect[name]"
      assert_select "textarea#effect_desc[name=?]", "effect[desc]"
      assert_select "textarea#effect_effects[name=?]", "effect[effects]"
    end
  end
end
