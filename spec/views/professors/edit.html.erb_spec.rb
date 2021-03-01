require 'rails_helper'

RSpec.describe "professors/edit", type: :view do
  before(:each) do
    @professor = assign(:professor, Professor.create!(
      Name: "MyString",
      CWID: 1,
      Expertise: "MyText"
    ))
  end

  it "renders the edit professor form" do
    render

    assert_select "form[action=?][method=?]", professor_path(@professor), "post" do

      assert_select "input[name=?]", "professor[Name]"

      assert_select "input[name=?]", "professor[CWID]"

      assert_select "textarea[name=?]", "professor[Expertise]"
    end
  end
end
