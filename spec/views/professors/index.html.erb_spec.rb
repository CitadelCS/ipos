require 'rails_helper'

RSpec.describe "professors/index", type: :view do
  before(:each) do
    assign(:professors, [
      Professor.create!(
        Name: "Name",
        CWID: 2,
        Expertise: "MyText"
      ),
      Professor.create!(
        Name: "Name",
        CWID: 2,
        Expertise: "MyText"
      )
    ])
  end

  it "renders a list of professors" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
  end
end
