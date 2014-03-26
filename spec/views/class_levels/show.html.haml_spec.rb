require 'spec_helper'

describe "class_levels/show" do
  before(:each) do
    @class_level = assign(:class_level, stub_model(ClassLevel,
      :character => nil,
      :character_class => nil,
      :class_level => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(/1/)
  end
end
