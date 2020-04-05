# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

question_one = Question.create(text: "Hast du Fieber?")
question_two = Question.create(text: "Hast du Gliederschmerzen?")
question_three = Question.create(text: "Hast du Halsschmerzen?")
question_four = Question.create(text: "Hast du Husten?")
question_five = Question.create(text: "Hast du Kopfschmerzen?")
question_six = Question.create(text: "Fühlst du dich müde?")
question_seven = Question.create(text: "Musst du niesen?")
question_eight = Question.create(text: "Hast du Schnupfen?")

Answer.create(option: "Ja", group: "fever", question: question_one)
Answer.create(option: "Nein", group: "fever", question: question_one)
Answer.create(option: "Ja", group: "limbs", question: question_two)
Answer.create(option: "Nein", group: "limbs", question: question_two)
Answer.create(option: "Ja", group: "neck", question: question_three)
Answer.create(option: "Nein", group: "neck", question: question_three)
Answer.create(option: "Ja", group: "cough", question: question_four)
Answer.create(option: "Nein", group: "cough", question: question_four)
Answer.create(option: "Ja", group: "head", question: question_five)
Answer.create(option: "Nein", group: "head", question: question_five)
Answer.create(option: "Ja", group: "fatigue", question: question_six)
Answer.create(option: "Nein", group: "fatigue", question: question_six)
Answer.create(option: "Ja", group: "sneeze", question: question_seven)
Answer.create(option: "Nein", group: "sneeze", question: question_seven)
Answer.create(option: "Ja", group: "sniff", question: question_eight)
Answer.create(option: "Nein", group: "sniff", question: question_eight)

