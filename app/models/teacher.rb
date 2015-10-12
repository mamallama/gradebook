class Teacher < ActiveRecord::Base
  has_many :students
  validates :name, presence: true
  validates :email, presence: true

  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }
end
