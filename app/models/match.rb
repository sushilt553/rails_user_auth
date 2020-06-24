class Match < ApplicationRecord

    belongs_to :campaign,
        primary_key: :id,
        foreign_key: :campaign_id,
        class_name: :Campaign
end
