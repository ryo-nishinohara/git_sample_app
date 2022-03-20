
class ReviewLab < ApplicationRecord
    validates :user_name, presence: true
    validates :difficulity, presence: true
    validates :fun, presence: true
    validates :free_review, presence: true
end
