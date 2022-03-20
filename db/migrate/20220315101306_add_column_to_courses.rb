class AddColumnToCourses < ActiveRecord::Migration[5.2]
  def change
    add_column :courses, :name , :string
    add_column :courses, :classification , :string
    add_column :courses, :class_period_day_of_week , :string
    add_column :courses, :class_period_timetable , :integer
    add_column :courses, :credit , :integer
    add_column :courses, :professor , :string
    add_column :courses, :difficulity , :float
    add_column :courses, :fun , :float
    add_column :courses, :pass_rate , :float
    add_column :courses, :ratio_exam , :integer
    add_column :courses, :ratio_attendance , :integer
    add_column :courses, :necessity_of_attendance , :string
    add_column :courses, :number_of_reviews , :integer
  end
end
