class User < ApplicationRecord
 #invokes b-crypt to require and hash passwords when adding new users. Provides many methods for the user object such as @user.authenticate()
    has_secure_password
    has_and_belongs_to_many :books
end
