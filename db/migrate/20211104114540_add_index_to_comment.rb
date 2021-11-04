class AddIndexToComment < ActiveRecord::Migration[6.1]
  def change
    add_reference :comments, :user,  foreign_key: true #on lies la table Comments a user et gossip qui sont au singulier puisqu'il peu y en avoir qu'un par commentaires
    add_reference :comments, :gossip, foreign_key: true 
  end
end
