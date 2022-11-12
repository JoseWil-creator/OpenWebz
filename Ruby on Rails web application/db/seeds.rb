# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# https://medium.com/@mariorodriguezan/make-your-life-easier-and-install-faker-ruby-gem-6dc491445d5
# IN ORDER TO SEED WE NEED TO DELETE Development.SQLITE AND SCHEMA.RB
require "faker"

puts "Sending data... (^_^)"

10.times do
    Student.create(
        student_name: Faker::Name.name,
        student_id: Faker::Number.between(from: 90000000, to: 999999999),
        student_email: Faker::Internet.email,
        student_phone: Faker::PhoneNumber.cell_phone_in_e164,
        physical_address: Faker::Address.street_address
        )
 end
 2.times do
    Prefix.create(prefix: "CS")
 end

2.times do
    Semester.create(
        semester: "Fall",
        year: 2022
    )
 end

 5.times do
    Course.create(
        prefix_id: 1,
        number: Faker::Number.between(from:10000, to: 90000),
        name: Faker::Name.name
    )
 end
 # counter to register all 5 students in different sections. Counter will be increase 5 times thus, matching 5 foreigh keys
counter = 1
 5.times do
    Section.create(
        Crn: Faker::Number.between(from:10000, to: 90000),
        course_id: counter,
        semester_id:1
    )
    counter =+ 1
 end
 # same as in the top but for sections and students foreign keys
counterTwo = 1
 5.times do
    SectionsStudents.create(
        section_id: counterTwo,
        student_id: counterTwo
    )
    counterTwo += 1
 end




