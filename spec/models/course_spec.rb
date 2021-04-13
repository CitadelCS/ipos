require 'rails_helper'

RSpec.describe Course, :type => :model do
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