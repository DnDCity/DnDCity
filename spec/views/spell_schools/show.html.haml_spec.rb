require 'spec_helper'

describe "spell_schools/show" do
  before(:each) do
    @spell_school = assign(:spell_school, stub_model(SpellSchool,
      :name => "Name",
      :desc => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/MyText/)
  end
end
