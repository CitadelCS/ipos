require 'rails_helper'

RSpec.describe "program_directors/new", type: :view do
  before(:each) do
    assign(:program_director, ProgramDirector.new(
      Name: "MyString",
      Department: "MyString"
    ))
  end

  it "renders new program_director form" do
    render

    assert_select "form[action=?][method=?]", program_directors_path, "post" do

      assert_select "input[name=?]", "program_director[Name]"

      assert_select "input[name=?]", "program_director[Department]"
    end
  end
end
