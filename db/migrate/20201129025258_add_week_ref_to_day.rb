class AddWeekRefToDay < ActiveRecord::Migration[5.2]
  def change
    add_reference :days, :week, foreign_key: true
  end
end
