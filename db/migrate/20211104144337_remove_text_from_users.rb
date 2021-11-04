class RemoveTextFromUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :text, :string #supprime une colonne de la table 
    remove_column :users, :password_digests, :string
  end
end
