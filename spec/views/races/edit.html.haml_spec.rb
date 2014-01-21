require 'spec_helper'

describe "races/edit" do
  before(:each) do
    @race = assign(:race, stub_model(Race,
      :name => "MyString",
      :desc => "MyText"
    ))
  end

  it "renders the edit race form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", race_path(@race), "post" do
      assert_select "input#race_name[name=?]", "race[name]"
      assert_select "textarea#race_desc[name=?]", "race[desc]"
    end
  end
end
