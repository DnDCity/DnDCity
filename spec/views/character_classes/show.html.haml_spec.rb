require 'spec_helper'

describe "character_classes/show" do
  before(:each) do
    @character_class = assign(:character_class, stub_model(CharacterClass,
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
