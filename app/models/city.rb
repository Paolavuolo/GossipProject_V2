class City < ApplicationRecord
    has_many :users #plusieurs utilisateurs par villes
end
