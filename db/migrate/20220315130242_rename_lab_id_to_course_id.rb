class RenameLabIdToCourseId < ActiveRecord::Migration[5.2]
  def change
    rename_column :review_courses, :lab_id, :course_id
  end
end
