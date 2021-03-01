require 'rails_helper'

RSpec.describe "program_directors/edit", type: :view do
  before(:each) do
    @program_director = assign(:program_director, ProgramDirector.create!(
      Name: "MyString",
      Department: "MyString"
    ))
  end

  it "renders the edit program_director form" do
    render

    assert_select "form[action=?][method=?]", program_director_path(@program_director), "post" do

      assert_select "input[name=?]", "program_director[Name]"

      assert_select "input[name=?]", "program_director[Department]"
    end
  end
end
