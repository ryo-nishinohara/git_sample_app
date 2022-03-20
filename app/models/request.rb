class Request < ApplicationRecord
    #各値に対するバリデーション
    validates :user_name, presence: true
    validates :email, presence: true
    validates :content, presence: true
end
