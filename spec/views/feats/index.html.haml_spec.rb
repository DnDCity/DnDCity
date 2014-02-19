require 'spec_helper'

describe "feats/index" do
  before(:each) do
    assign(:feats, [
      stub_model(Feat,
        :name => "Name",
        :desc => "MyText",
        :feat_type => nil,
        :modifiers => "MyText",
        :prerequisites => "MyText",
        :benefit => "MyText"
      ),
      stub_model(Feat,
        :name => "Name",
        :desc => "MyText",
        :feat_type => nil,
        :modifiers => "MyText",
        :prerequisites => "MyText",
        :benefit => "MyText"
      )
    ])
  end

  it "renders a list of feats" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
