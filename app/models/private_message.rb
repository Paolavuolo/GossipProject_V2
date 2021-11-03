class PrivateMessage < ApplicationRecord
    validates :content, presence: true
    belongs_to :sender, class_name: 'User' #appartient a la colonne sender qui est dans la classe User
    belongs_to :recipient, class_name: 'User'
end
