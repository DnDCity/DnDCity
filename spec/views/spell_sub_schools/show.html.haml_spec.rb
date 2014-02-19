require 'spec_helper'

describe "spell_sub_schools/show" do
  before(:each) do
    @spell_sub_school = assign(:spell_sub_school, stub_model(SpellSubSchool,
      :name => "Name",
      :desc => "MyText",
      :spell_school => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/MyText/)
    rendered.should match(//)
  end
end
