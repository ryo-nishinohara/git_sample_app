class AddColumnToLab < ActiveRecord::Migration[5.2]
  def change
    add_column :labs, :name , :string
    add_column :labs, :classification , :string
    add_column :labs, :major , :string
    add_column :labs, :core_time_start_hour , :integer
    add_column :labs, :core_time_start_min , :integer
    add_column :labs, :core_time_end_hour , :integer
    add_column :labs, :core_time_end_min , :integer
    add_column :labs, :professor , :string
    add_column :labs, :difficulity , :float
    add_column :labs, :fun , :float
    add_column :labs, :number_of_reviews , :integer
  end
end
