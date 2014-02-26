require 'spec_helper'

describe "consumable_items/index" do
  before(:each) do
    assign(:consumable_items, [
      stub_model(ConsumableItem,
        :name => "Name",
        :desc => "MyText",
        :effects => "MyText",
        :weight => "Weight",
        :cost => "Cost"
      ),
      stub_model(ConsumableItem,
        :name => "Name",
        :desc => "MyText",
        :effects => "MyText",
        :weight => "Weight",
        :cost => "Cost"
      )
    ])
  end

  it "renders a list of consumable_items" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Weight".to_s, :count => 2
    assert_select "tr>td", :text => "Cost".to_s, :count => 2
  end
end
