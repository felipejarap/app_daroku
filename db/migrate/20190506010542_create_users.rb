class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :rut
      t.string :fisrtname
      t.string :lastname
      t.integer :age
      t.string :avatar
      t.string :nickname
      t.string :phone
      t.references :municipality, foreign_key: true
      t.references :city, foreign_key: true

      t.timestamps
    end
  end
end
