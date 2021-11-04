class Comment < ApplicationRecord
    has_many :user #1-N un utilisateur par commentaire
    has_many :gossip #1-N un gossip par commentaire 
end
