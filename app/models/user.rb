class User < ApplicationRecord
    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :description, presence: true
    validates :email, presence: true
    validates :age, presence: true, numericality: {only_integer: true}
    validates :city_id, presence: true
    
    belongs_to :city #une ville par utilisateurs
    has_many :gossips  #un utilisateur peut avoir plusieurs gossips
    has_many :sent_messages, foreign_key: 'sender_id', class_name: "PrivateMessage"
    has_many :received_messages, foreign_key: 'recipient_id', class_name: "PrivateMessage"
end
