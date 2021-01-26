class Item < ActiveRecord::Base
    has_many :activity_items
    has_many :activities, through: :activity_items
    validates :name, uniqueness: true

end
