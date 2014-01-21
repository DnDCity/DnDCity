require 'spec_helper'

describe "characters/index" do
  before(:each) do
    assign(:characters, [
      stub_model(Character,
        :name => "Name",
        :user => nil,
        :base_str => 1,
        :base_dex => 2,
        :base_con => 3,
        :base_int => 4,
        :base_wis => 5,
        :base_cha => 6
      ),
      stub_model(Character,
        :name => "Name",
        :user => nil,
        :base_str => 1,
        :base_dex => 2,
        :base_con => 3,
        :base_int => 4,
        :base_wis => 5,
        :base_cha => 6
      )
    ])
  end

  it "renders a list of characters" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => 6.to_s, :count => 2
  end
end
