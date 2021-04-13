require 'rails_helper'

RSpec.describe Student, :type => :model do
  
  before(:all) do
    @student = Student.create(Name: "Phil", CWID: 10619837, Concentration: "ComSci Stuff", Advisor: "Dr. V")
end
    it 'checks that a student can be created' do
    expect(@student).to be_valid
end
it 'checks that a student can be read' do
    expect(Student.find_by_Name("Phil"))==(@student)
end
it 'checks that a student can be updated' do
    @student.update(:Name => "Phil Jr.")
    expect(Student.find_by_Name("Phil Jr."))==(@student)
end
it 'checks that a student can be destroyed' do
    @student.destroy
    expect(Student.find_by(Name: "Phil Jr.")).to be_nil
end
  
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