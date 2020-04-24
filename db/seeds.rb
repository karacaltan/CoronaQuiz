question_one = Question.create(text: "Hast du Fieber?")
question_two = Question.create(text: "Hast du Gliederschmerzen?")
question_three = Question.create(text: "Hast du Halsschmerzen?")
question_four = Question.create(text: "Hast du Husten?")
question_five = Question.create(text: "Hast du Kopfschmerzen?")
question_six = Question.create(text: "Fühlst du dich müde?")
question_seven = Question.create(text: "Musst du niesen?")
question_eight = Question.create(text: "Hast du Schnupfen?")

Answer.create(option: "häufig", category: "fever", question: question_one)
Answer.create(option: "selten", category: "fever", question: question_one)
Answer.create(option: "manchmal", category: "limbs", question: question_two)
Answer.create(option: "häufig", category: "limbs", question: question_two)
Answer.create(option: "manchmal", category: "neck", question: question_three)
Answer.create(option: "häufig", category: "neck", question: question_three)
Answer.create(option: "häufig (trocken)", category: "cough", question: question_four)
Answer.create(option: "wenig", category: "cough", question: question_four)
Answer.create(option: "manchmal", category: "head", question: question_five)
Answer.create(option: "selten", category: "head", question: question_five)
Answer.create(option: "häufig", category: "head", question: question_five)
Answer.create(option: "manchmal", category: "fatigue", question: question_six)
Answer.create(option: "häufig", category: "fatigue", question: question_six)
Answer.create(option: "häufig", category: "sneeze", question: question_seven)
Answer.create(option: "nein", category: "sneeze", question: question_seven)
Answer.create(option: "selten", category: "sniff", question: question_eight)
Answer.create(option: "häufig", category: "sniff", question: question_eight)
Answer.create(option: "manchmal", category: "sniff", question: question_eight)



answer_fever = Answer.find_by(:category => 'fever', :option => 'häufig' ).id
answer_fever_ = Answer.find_by(:category => 'fever', :option => 'selten' ).id
answer_limbs = Answer.find_by(:category => 'limbs', :option => 'manchmal' ).id
answer_limbs_ = Answer.find_by(:category => 'limbs', :option => 'häufig' ).id
answer_neck = Answer.find_by(:category => 'neck', :option => 'manchmal' ).id
answer_neck_ = Answer.find_by(:category => 'neck', :option => 'häufig' ).id
answer_cough = Answer.find_by(:category => 'cough', :option => 'häufig (trocken)' ).id
answer_cough_ = Answer.find_by(:category => 'cough', :option => 'wenig' ).id
answer_head = Answer.find_by(:category => 'head', :option => 'manchmal' ).id
answer_head_ = Answer.find_by(:category => 'head', :option => 'selten' ).id
answer_head__ = Answer.find_by(:category => 'head', :option => 'häufig' ).id
answer_fatigue = Answer.find_by(:category => 'fatigue', :option => 'manchmal' ).id
answer_fatigue_ = Answer.find_by(:category => 'fatigue', :option => 'häufig' ).id
answer_sneeze = Answer.find_by(:category => 'sneeze', :option => 'nein' ).id
answer_sneeze_ = Answer.find_by(:category => 'sneeze', :option => 'häufig' ).id
answer_sniff = Answer.find_by(:category => 'sniff', :option => 'selten' ).id
answer_sniff_ = Answer.find_by(:category => 'sniff', :option => 'häufig' ).id
answer_sniff__ = Answer.find_by(:category => 'sniff', :option => 'manchmal' ).id


Illness.create(name: "Coronavirus", answer_ids: [answer_fever, answer_limbs, answer_neck, answer_cough, answer_head,
                                                 answer_fatigue, answer_sneeze, answer_sniff ]) # coronavirus
Illness.create(name: "Erkältung", answer_ids: [answer_fever_, answer_limbs_, answer_neck_, answer_cough_,
                                                 answer_head_, answer_fatigue, answer_sneeze_, answer_sniff_]) # cold
Illness.create(name: "Grippe", answer_ids: [answer_fever, answer_limbs_, answer_neck, answer_cough, answer_head__,
                                                 answer_fatigue_, answer_sneeze, answer_sniff__ ]) # flu

