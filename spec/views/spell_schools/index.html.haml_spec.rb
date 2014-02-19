require 'spec_helper'

describe "spell_schools/index" do
  before(:each) do
    assign(:spell_schools, [
      stub_model(SpellSchool,
        :name => "Name",
        :desc => "MyText"
      ),
      stub_model(SpellSchool,
        :name => "Name",
        :desc => "MyText"
      )
    ])
  end

  it "renders a list of spell_schools" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
