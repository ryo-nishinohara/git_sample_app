
class ReviewLab < ApplicationRecord
    #各値に対するバリデーション
    validates :user_name, presence: true
    validates :difficulity, presence: true
    validates :fun, presence: true
    validates :free_review, presence: true
end
