class Tag < ApplicationRecord
    validates :title, presence: true

    has_many :nn_tag_gossips
    has_many :gossips, through: :nn_tag_gossips #relation N-N avec gossip
end
