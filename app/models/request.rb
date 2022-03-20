class Request < ApplicationRecord
    validates :user_name, presence: true
    validates :email, presence: true
    validates :content, presence: true
end
