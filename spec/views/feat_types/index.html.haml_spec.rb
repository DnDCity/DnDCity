require 'spec_helper'

describe "feat_types/index" do
  before(:each) do
    assign(:feat_types, [
      stub_model(FeatType,
        :name => "Name",
        :desc => "MyText"
      ),
      stub_model(FeatType,
        :name => "Name",
        :desc => "MyText"
      )
    ])
  end

  it "renders a list of feat_types" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
