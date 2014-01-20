require 'spec_helper'

describe "campaigns/edit" do
  before(:each) do
    @campaign = assign(:campaign, stub_model(Campaign,
      :name => "MyString",
      :reference => "",
      :desc => "MyText"
    ))
  end

  it "renders the edit campaign form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", campaign_path(@campaign), "post" do
      assert_select "input#campaign_name[name=?]", "campaign[name]"
      assert_select "input#campaign_reference[name=?]", "campaign[reference]"
      assert_select "textarea#campaign_desc[name=?]", "campaign[desc]"
    end
  end
end
