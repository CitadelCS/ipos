require 'rails_helper'

RSpec.describe "program_directors/show", type: :view do
  before(:each) do
    @program_director = assign(:program_director, ProgramDirector.create!(
      Name: "Name",
      Department: "Department"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Department/)
  end
end
