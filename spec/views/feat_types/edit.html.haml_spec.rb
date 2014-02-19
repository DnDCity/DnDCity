require 'spec_helper'

describe "feat_types/edit" do
  before(:each) do
    @feat_type = assign(:feat_type, stub_model(FeatType,
      :name => "MyString",
      :desc => "MyText"
    ))
  end

  it "renders the edit feat_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", feat_type_path(@feat_type), "post" do
      assert_select "input#feat_type_name[name=?]", "feat_type[name]"
      assert_select "textarea#feat_type_desc[name=?]", "feat_type[desc]"
    end
  end
end
