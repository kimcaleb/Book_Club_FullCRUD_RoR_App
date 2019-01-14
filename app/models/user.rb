class User < ApplicationRecord
 #invokes b-crypt to require and hash passwords when adding new users. 
    has_secure_password
end
