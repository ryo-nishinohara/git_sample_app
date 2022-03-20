class CreateReviewLabs < ActiveRecord::Migration[5.2]
  def change
    create_table :review_labs do |t|

      t.timestamps
    end
  end
end
