class CreateQuestionnaires < ActiveRecord::Migration[6.0]
  def change
    create_table :questionnaires do |t|
      t.text :submitted_questionnaire

      t.timestamps
    end
  end
end
