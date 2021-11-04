class AddColumnToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :password_digest, :string #ajoute une colonne dans la table 
  end
end
