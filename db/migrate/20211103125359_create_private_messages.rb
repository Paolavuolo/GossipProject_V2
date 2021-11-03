class CreatePrivateMessages < ActiveRecord::Migration[6.1]
  def change
    create_table :private_messages do |t|
      t.text :content

      #on annonce les foreign key recipient et sender qui ne sont pas des tables puisqu'ils appartiennent a la class User
      t.references :recipient, index: true #le index true est utilisé quand la table n'existe pas, il permet de créer une colonne recipient_id dans la table
      t.references :sender, index: true 

      t.timestamps
    end
  end
end
