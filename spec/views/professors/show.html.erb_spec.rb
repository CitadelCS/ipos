require 'rails_helper'

RSpec.describe "professors/show", type: :view do
  before(:each) do
    @professor = assign(:professor, Professor.create!(
      Name: "Name",
      CWID: 2,
      Expertise: "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/MyText/)
  end
end
