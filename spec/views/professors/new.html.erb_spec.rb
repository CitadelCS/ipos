require 'rails_helper'

RSpec.describe "professors/new", type: :view do
  before(:each) do
    assign(:professor, Professor.new(
      Name: "MyString",
      CWID: 1,
      Expertise: "MyText"
    ))
  end

  it "renders new professor form" do
    render

    assert_select "form[action=?][method=?]", professors_path, "post" do

      assert_select "input[name=?]", "professor[Name]"

      assert_select "input[name=?]", "professor[CWID]"

      assert_select "textarea[name=?]", "professor[Expertise]"
    end
  end
end
