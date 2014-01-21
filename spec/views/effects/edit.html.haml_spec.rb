require 'spec_helper'

describe "effects/edit" do
  before(:each) do
    @effect = assign(:effect, stub_model(Effect,
      :name => "MyString",
      :desc => "MyText",
      :effects => "MyText"
    ))
  end

  it "renders the edit effect form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", effect_path(@effect), "post" do
      assert_select "input#effect_name[name=?]", "effect[name]"
      assert_select "textarea#effect_desc[name=?]", "effect[desc]"
      assert_select "textarea#effect_effects[name=?]", "effect[effects]"
    end
  end
end
