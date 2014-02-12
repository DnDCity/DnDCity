require 'spec_helper'

describe "feats/show" do
  before(:each) do
    @feat = assign(:feat, stub_model(Feat,
      :name => "Name",
      :desc => "MyText",
      :feat_type => nil,
      :modifiers => "MyText",
      :prerequisites => "MyText",
      :benefit => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/MyText/)
    rendered.should match(//)
    rendered.should match(/MyText/)
    rendered.should match(/MyText/)
    rendered.should match(/MyText/)
  end
end
