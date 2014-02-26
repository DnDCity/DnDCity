require 'spec_helper'

describe "consumable_items/edit" do
  before(:each) do
    @consumable_item = assign(:consumable_item, stub_model(ConsumableItem,
      :name => "MyString",
      :desc => "MyText",
      :effects => "MyText",
      :weight => "MyString",
      :cost => "MyString"
    ))
  end

  it "renders the edit consumable_item form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", consumable_item_path(@consumable_item), "post" do
      assert_select "input#consumable_item_name[name=?]", "consumable_item[name]"
      assert_select "textarea#consumable_item_desc[name=?]", "consumable_item[desc]"
      assert_select "textarea#consumable_item_effects[name=?]", "consumable_item[effects]"
      assert_select "input#consumable_item_weight[name=?]", "consumable_item[weight]"
      assert_select "input#consumable_item_cost[name=?]", "consumable_item[cost]"
    end
  end
end
