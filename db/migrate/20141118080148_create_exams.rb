class CreateExams < ActiveRecord::Migration
  def change
    create_table :exams do |t|
      t.date :date
      t.string :form_type

      t.timestamps
    end
  end
end
