class User < ApplicationRecord
  include Clearance::User
   #use this with bycrpyt (has_secure_password)
   validates :email, presence: true
   validates :encrypted_password, presence: true
   validates :confirmation_token, presence: true
end
