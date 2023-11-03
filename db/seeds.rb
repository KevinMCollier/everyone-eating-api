# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# db/seeds.rb

# Clear the existing data
AnswerLocation.delete_all
Answer.delete_all
Question.delete_all
Location.delete_all

# Questions
question1 = Question.create!(text: 'What will you eat for dinner tonight?', active: true)
question2 = Question.create!(text: 'What is your favorite food?', active: false)

# Locations as countries
usa = Location.create!(name: 'United States', code: 'US')
canada = Location.create!(name: 'Canada', code: 'CA')
mexico = Location.create!(name: 'Mexico', code: 'MX')
japan = Location.create!(name: 'Japan', code: 'JP')

# Answers with associated locations
answer1 = Answer.create!(response: 'Pizza', question: question1)
AnswerLocation.create!(answer: answer1, location: usa)

answer2 = Answer.create!(response: 'Sushi', question: question2)
AnswerLocation.create!(answer: answer2, location: japan)

answer3 = Answer.create!(response: 'Tacos', question: question2)
AnswerLocation.create!(answer: answer3, location: mexico)

answer4 = Answer.create!(response: 'Pasta', question: question1)
AnswerLocation.create!(answer: answer4, location: canada)

puts 'Seeds created:'
puts "#{Question.count} questions"
puts "#{Location.count} locations"
puts "#{Answer.count} answers"
puts "#{AnswerLocation.count} answer locations"
