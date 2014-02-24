require 'spec_helper'

describe "consumable_items/show" do
  before(:each) do
    @consumable_item = assign(:consumable_item, stub_model(ConsumableItem,
      :name => "Name",
      :desc => "MyText",
      :effects => "MyText",
      :weight => "Weight",
      :cost => "Cost"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/MyText/)
    rendered.should match(/MyText/)
    rendered.should match(/Weight/)
    rendered.should match(/Cost/)
  end
end
