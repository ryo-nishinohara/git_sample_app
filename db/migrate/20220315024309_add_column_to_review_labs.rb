class AddColumnToReviewLabs < ActiveRecord::Migration[5.2]
  def change
    add_column :review_labs, :user_name , :string
    add_column :review_labs, :lab_id , :integer
    add_column :review_labs, :difficulity , :integer
    add_column :review_labs, :fun , :integer
    add_column :review_labs, :core_time_start_hour , :integer
    add_column :review_labs, :core_time_start_min , :integer
    add_column :review_labs, :core_time_end_hour , :integer
    add_column :review_labs, :core_time_end_min , :integer
    add_column :review_labs, :free_review , :text
  end
end
