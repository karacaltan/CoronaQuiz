class RenameAnswerGroup < ActiveRecord::Migration[6.0]
  def change
    rename_column :answers, :group, :category
  end
end
