require 'spec_helper'

describe "effects/index" do
  before(:each) do
    assign(:effects, [
      stub_model(Effect,
        :name => "Name",
        :desc => "MyText",
        :effects => "MyText"
      ),
      stub_model(Effect,
        :name => "Name",
        :desc => "MyText",
        :effects => "MyText"
      )
    ])
  end

  it "renders a list of effects" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
