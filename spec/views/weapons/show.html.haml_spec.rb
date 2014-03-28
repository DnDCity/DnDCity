require 'spec_helper'

describe "weapons/show" do
  before(:each) do
    @weapon = assign(:weapon, stub_model(Weapon,
      :name => "Name",
      :desc => "MyText",
      :user => nil,
      :damages => "Damages",
      :damagem => "Damagem",
      :critical => "Critical",
      :rangeincrement => 1.5,
      :weight => 1.5,
      :isthrowable => false,
      :islight => false,
      :isonehanded => false,
      :istwohanded => false,
      :type => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/MyText/)
    rendered.should match(//)
    rendered.should match(/Damages/)
    rendered.should match(/Damagem/)
    rendered.should match(/Critical/)
    rendered.should match(/1.5/)
    rendered.should match(/1.5/)
    rendered.should match(/false/)
    rendered.should match(/false/)
    rendered.should match(/false/)
    rendered.should match(/false/)
    rendered.should match(/MyText/)
  end
end
