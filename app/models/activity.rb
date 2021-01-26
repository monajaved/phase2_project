class Activity < ActiveRecord::Base
    belongs_to :user
    has_many :activity_items
    has_many :items, through: :activity_items
    validates_presence_of :title
end
