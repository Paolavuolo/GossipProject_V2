class User < ApplicationRecord
    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :description, presence: true
    validates :email, presence: true, format:/@/, uniqueness: {case_sensitive: false}
    validates :age, presence: true, numericality: {only_integer: true}
    validates :city_id, presence: true
    validates :password, presence: true, length: { minimum: 6 }
    
    belongs_to :city #une ville par utilisateurs
    has_many :gossips  #un utilisateur peut avoir plusieurs gossips
    has_many :sent_messages, foreign_key: 'sender_id', class_name: "PrivateMessage"
    has_many :received_messages, foreign_key: 'recipient_id', class_name: "PrivateMessage"
    has_many :comments #1-N plusieurs commentaires par utilisateur
    has_secure_password #indique que bcrypt gère et hash les MDP
end
