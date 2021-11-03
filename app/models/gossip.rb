class Gossip < ApplicationRecord
    #validates :title, presence: true, length: { in: 3..14}
    validates :content, presence: true
    validates :user_id, presence: true 
    
    belongs_to :user #un gossip n'a qu'un seul utilisateur relation N-1
    has_many :nn_tag_gossips
    has_many :tags, through: :nn_tag_gossips #relation N-N avec tag
end
