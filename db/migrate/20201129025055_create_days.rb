class CreateDays < ActiveRecord::Migration[5.2]
  def change
    create_table :days do |t|
      t.string :day_of_week
      t.integer :date
      t.string :subject_1
      t.string :home_task_1
      t.integer :grade_1
      t.string :subject_2
      t.string :home_task_2
      t.integer :grade_2
      t.string :subject_3
      t.string :home_task_3
      t.integer :grade_3
      t.string :subject_4
      t.string :home_task_4
      t.integer :grade_4
      t.string :subject_5
      t.string :home_task_5
      t.integer :grade_5

      t.timestamps
    end
  end
end
