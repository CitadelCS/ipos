require 'rails_helper'

RSpec.describe User, type: :model do
    subject {create :user}
    
  context 'validation tests' do
      
    it "is valid with valid attributes" do
       expect(subject).to be_valid
      end
      
      it "is not valid without an email" do
      subject.email = nil
        expect(subject).to_not be_valid
      end
    
      it "is not valid without a password" do
      subject.encrypted_password = nil
        expect(subject).to_not be_valid
      end
        
      it "is not valid without a token" do
      subject.confirmation_token = nil
        expect(subject).to_not be_valid
      end
    end
end 