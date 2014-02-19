require 'spec_helper'

describe "feat_types/show" do
  before(:each) do
    @feat_type = assign(:feat_type, stub_model(FeatType,
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
