require 'spec_helper'

describe "consumable_items/new" do
  before(:each) do
    assign(:consumable_item, stub_model(ConsumableItem,
      :name => "MyString",
      :desc => "MyText",
      :effects => "MyText",
      :weight => "MyString",
      :cost => "MyString"
    ).as_new_record)
  end

  it "renders new consumable_item form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", consumable_items_path, "post" do
      assert_select "input#consumable_item_name[name=?]", "consumable_item[name]"
      assert_select "textarea#consumable_item_desc[name=?]", "consumable_item[desc]"
      assert_select "textarea#consumable_item_effects[name=?]", "consumable_item[effects]"
      assert_select "input#consumable_item_weight[name=?]", "consumable_item[weight]"
      assert_select "input#consumable_item_cost[name=?]", "consumable_item[cost]"
    end
  end
end
