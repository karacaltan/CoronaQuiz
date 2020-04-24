class CreateIllnesses < ActiveRecord::Migration[6.0]
  def change
    create_table :illnesses do |t|
      t.string :name
      t.text :answer_ids, array: true, default: []

      t.timestamps
    end
  end
end
