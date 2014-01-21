require 'spec_helper'

describe "spells/edit" do
  before(:each) do
    @spell = assign(:spell, stub_model(Spell,
      :name => "MyString",
      :desc => "MyText"
    ))
  end

  it "renders the edit spell form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", spell_path(@spell), "post" do
      assert_select "input#spell_name[name=?]", "spell[name]"
      assert_select "textarea#spell_desc[name=?]", "spell[desc]"
    end
  end
end
