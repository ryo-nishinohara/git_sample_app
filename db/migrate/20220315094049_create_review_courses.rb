class CreateReviewCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :review_courses do |t|

      t.timestamps
    end
  end
end
