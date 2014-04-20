class User < ActiveRecord::Base
  attr_accessible :password, :email

  has_secure_password
end
