require 'rails_helper'

RSpec.describe Student, :type => :model do
   subject { described_class.new }

  it "is valid with valid attributes" do
    subject.Name = "Anything"
    subject.CWID = "Anything"
    subject.Concentration = "Anything"
    subject.Advisor = "Anything"
    expect(subject).to be_valid
  end
  it "is not valid without a Name" do
  student = Student.new(Name: nil)
  expect(student).to_not be_valid
end
  it "is not valid without a CWID" do
  student = Student.new(CWID: nil)
  expect(student).to_not be_valid
end
 it "is not valid without a Concentration" do
  student = Student.new(Concentration: nil)
  expect(student).to_not be_valid
end
 it "is not valid without a Advisor" do
  student = Student.new(Advisor: nil)
  expect(student).to_not be_valid
end
end