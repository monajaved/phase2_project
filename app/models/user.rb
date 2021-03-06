class User < ActiveRecord::Base
    has_many :activities
    has_many :items, through: :activities
    has_secure_password

    validates :username, presence: true, uniqueness: true
end