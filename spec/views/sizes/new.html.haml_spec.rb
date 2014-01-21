require 'spec_helper'

describe "sizes/new" do
  before(:each) do
    assign(:size, stub_model(Size,
      :name => "MyString",
      :desc => "MyText"
    ).as_new_record)
  end

  it "renders new size form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", sizes_path, "post" do
      assert_select "input#size_name[name=?]", "size[name]"
      assert_select "textarea#size_desc[name=?]", "size[desc]"
    end
  end
end
