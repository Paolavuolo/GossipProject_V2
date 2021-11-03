class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :description
      t.string :text
      t.string :email
      t.integer :age
      t.belongs_to :city, index: true #cette ligne rajoute la référence a la table users


      t.timestamps
    end
  end
end
