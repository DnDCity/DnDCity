require 'spec_helper'

describe "feats/new" do
  before(:each) do
    assign(:feat, stub_model(Feat,
      :name => "MyString",
      :desc => "MyText",
      :feat_type => nil,
      :modifiers => "MyText",
      :prerequisites => "MyText",
      :benefit => "MyText"
    ).as_new_record)
  end

  it "renders new feat form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", feats_path, "post" do
      assert_select "input#feat_name[name=?]", "feat[name]"
      assert_select "textarea#feat_desc[name=?]", "feat[desc]"
      assert_select "input#feat_feat_type[name=?]", "feat[feat_type]"
      assert_select "textarea#feat_modifiers[name=?]", "feat[modifiers]"
      assert_select "textarea#feat_prerequisites[name=?]", "feat[prerequisites]"
      assert_select "textarea#feat_benefit[name=?]", "feat[benefit]"
    end
  end
end
