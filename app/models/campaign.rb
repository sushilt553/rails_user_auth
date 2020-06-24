class Campaign < ApplicationRecord

    validates :name, presence: true
    validates :goal, presence: true

    has_many :donations,
        primary_key: :id,
        foreign_key: :campaign_id,
        class_name: :Donation

    has_many :matches,
        primary_key: :id,
        foreign_key: :campaign_id,
        class_name: :Match
end
