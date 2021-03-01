require 'rails_helper'

RSpec.describe "program_directors/index", type: :view do
  before(:each) do
    assign(:program_directors, [
      ProgramDirector.create!(
        Name: "Name",
        Department: "Department"
      ),
      ProgramDirector.create!(
        Name: "Name",
        Department: "Department"
      )
    ])
  end

  it "renders a list of program_directors" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "Department".to_s, count: 2
  end
end
