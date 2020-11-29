class CreateDiaries < ActiveRecord::Migration[5.2]
  def change
    create_table :diaries do |t|
      t.string :name, null: false
      t.string :surname, null: false
      t.string :class, null: false

      t.timestamps
    end
  end
end
