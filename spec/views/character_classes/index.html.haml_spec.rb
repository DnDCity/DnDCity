require 'spec_helper'

describe "character_classes/index" do
  before(:each) do
    assign(:character_classes, [
      stub_model(CharacterClass,
        :name => "Name",
        :desc => "MyText"
      ),
      stub_model(CharacterClass,
        :name => "Name",
        :desc => "MyText"
      )
    ])
  end

  it "renders a list of character_classes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
