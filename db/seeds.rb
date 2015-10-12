# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
ar = Teacher.create!(name: "Abster", email: "ar@example.com", password: "123456")

bos = Student.create!(name: "bruce", email: "bruce@example.com", password: "1234567")
Student.create!(name: "chicken", email: "bahaha@example.com", password: "nopers")
renee = Parent.create!(name: "renee", email: "rq@example.com", password: "12345678")

Grade.create!(assignment_name: "Doctor Who", student_id: 1, grade: "A")
Grade.create!(assignment_name: "Clara's background music", student_id: 1, grade: "F")
Grade.create!(assignment_name: "Oh, darn. The angels are behind me.", student_id: 2, grade: "C")

ar.students << bos

bos.parents << renee

ar.save
bos.save
