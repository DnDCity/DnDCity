require 'spec_helper'

describe "effects/show" do
  before(:each) do
    @effect = assign(:effect, stub_model(Effect,
      :name => "Name",
      :desc => "MyText",
      :effects => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/MyText/)
    rendered.should match(/MyText/)
  end
end
