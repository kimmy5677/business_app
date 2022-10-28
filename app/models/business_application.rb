class BusinessApplication < ApplicationRecord
    validates :title, presence: true
    validates :about, presence: true
end
