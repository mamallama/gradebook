class Student < ActiveRecord::Base
  has_many :parents
  has_many :grades
  belongs_to :teacher

  validates :name, presence: true
  validates :email, presence: true

  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }
end
