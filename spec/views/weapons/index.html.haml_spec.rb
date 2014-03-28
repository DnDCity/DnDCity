require 'spec_helper'

describe "weapons/index" do
  before(:each) do
    assign(:weapons, [
      stub_model(Weapon,
        :name => "Name",
        :desc => "MyText",
        :user => nil,
        :damages => "Damages",
        :damagem => "Damagem",
        :critical => "Critical",
        :rangeincrement => 1.5,
        :weight => 1.5,
        :isthrowable => false,
        :islight => false,
        :isonehanded => false,
        :istwohanded => false,
        :type => "MyText"
      ),
      stub_model(Weapon,
        :name => "Name",
        :desc => "MyText",
        :user => nil,
        :damages => "Damages",
        :damagem => "Damagem",
        :critical => "Critical",
        :rangeincrement => 1.5,
        :weight => 1.5,
        :isthrowable => false,
        :islight => false,
        :isonehanded => false,
        :istwohanded => false,
        :type => "MyText"
      )
    ])
  end

  it "renders a list of weapons" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Damages".to_s, :count => 2
    assert_select "tr>td", :text => "Damagem".to_s, :count => 2
    assert_select "tr>td", :text => "Critical".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
