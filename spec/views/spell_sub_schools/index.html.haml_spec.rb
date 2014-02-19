require 'spec_helper'

describe "spell_sub_schools/index" do
  before(:each) do
    assign(:spell_sub_schools, [
      stub_model(SpellSubSchool,
        :name => "Name",
        :desc => "MyText",
        :spell_school => nil
      ),
      stub_model(SpellSubSchool,
        :name => "Name",
        :desc => "MyText",
        :spell_school => nil
      )
    ])
  end

  it "renders a list of spell_sub_schools" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
