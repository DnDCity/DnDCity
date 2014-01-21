require 'spec_helper'

describe "spells/index" do
  before(:each) do
    assign(:spells, [
      stub_model(Spell,
        :name => "Name",
        :desc => "MyText"
      ),
      stub_model(Spell,
        :name => "Name",
        :desc => "MyText"
      )
    ])
  end

  it "renders a list of spells" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
