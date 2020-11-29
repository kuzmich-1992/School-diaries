class CreateWeeks < ActiveRecord::Migration[5.2]
  def change
    create_table :weeks do |t|
      t.string :month, null:false
      t.string :behavior, null:false
      t.text :teacher_notes
      t.integer :number_of_missed_lessons, null:false
      t.references :diary, foreign_key: true

      t.timestamps
    end
  end
end
