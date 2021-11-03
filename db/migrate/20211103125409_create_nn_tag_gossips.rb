class CreateNnTagGossips < ActiveRecord::Migration[6.1]
  def change
    create_table :tag_gossips do |t|
      t.belongs_to :tag, index: true #on rajoute la référence du model tag a la table nn
      t.belongs_to :gossip, index: true #on rajoute la référence du model gossip a la table nn

      #cette migration existe pour créer une relation N-N avec les tables gossips et tags 

      t.timestamps
    end
  end
end
