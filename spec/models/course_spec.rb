require 'rails_helper'

RSpec.describe Course, :type => :model do
before(:all) do
    @course = Course.create(name: "Easy Course", number: 101, section: 01, prefix: "CSCI")
end
    it 'checks that a course can be created' do
    expect(@course).to be_valid
end
it 'checks that a course can be read' do
    expect(Course.find_by_name("Easy Course"))==(@course)
end
it 'checks that a course can be updated' do
    @course.update(:name => "Easy Course Practicum")
    expect(Course.find_by_name("Easy Course Practicum"))==(@course)
end
it 'checks that a course can be destroyed' do
    @course.destroy
    expect(Course.find_by(name: "Easy Course Practicum")).to be_nil
end
    
    subject { described_class.new }

  it "is valid with valid attributes" do
    subject.name = "Anything"
    subject.number = "Anything"
    subject.section = "Anything"
    subject.prefix = "Anything"
    expect(subject).to be_valid
  end
  it "is not valid without a prefix" do
  course = Course.new(prefix: nil)
  expect(course).to_not be_valid
end
  it "is not valid without a name" do
  course = Course.new(name: nil)
  expect(course).to_not be_valid
end
  it "is not valid without a number" do
  course = Course.new(number: nil)
  expect(course).to_not be_valid
end
 it "is not valid without a section" do
  course = Course.new(section: nil)
  expect(course).to_not be_valid
end
end