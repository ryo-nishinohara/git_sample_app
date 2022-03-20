class AddColumnToReviewCourses < ActiveRecord::Migration[5.2]
  def change
    add_column :review_courses, :user_name , :string
    add_column :review_courses, :lab_id , :integer
    add_column :review_courses, :difficulity , :integer
    add_column :review_courses, :fun , :integer
    add_column :review_courses, :grade , :integer
    add_column :review_courses, :attendance , :string
    add_column :review_courses, :free_review , :text
  end
end
