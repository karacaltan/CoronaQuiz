class CreateAnswers < ActiveRecord::Migration[6.0]
  def change
    create_table :answers do |t|
      t.string :option
      t.string :group

      t.timestamps
    end
  end
end
