class FixColumnNameDiary < ActiveRecord::Migration[5.2]
  def change
    rename_column :diaries, :class, :high_school_class
  end  
end
