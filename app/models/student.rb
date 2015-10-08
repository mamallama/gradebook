class Student < ActiveRecord::Base
  has_many :parent
  has_many :grade

  validates :name, presence: true
  validates :email, presence: true

  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }
end
