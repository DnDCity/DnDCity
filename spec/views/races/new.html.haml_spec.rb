require 'spec_helper'

describe "races/new" do
  before(:each) do
    assign(:race, stub_model(Race,
      :name => "MyString",
      :desc => "MyText"
    ).as_new_record)
  end

  it "renders new race form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", races_path, "post" do
      assert_select "input#race_name[name=?]", "race[name]"
      assert_select "textarea#race_desc[name=?]", "race[desc]"
    end
  end
end
