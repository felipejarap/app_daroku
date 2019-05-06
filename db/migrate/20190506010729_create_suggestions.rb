class CreateSuggestions < ActiveRecord::Migration[5.2]
  def change
    create_table :suggestions do |t|
      t.string :description
      t.string :comment
      t.references :user, foreign_key: true
      t.references :type_suggestion, foreign_key: true

      t.timestamps
    end
  end
end
