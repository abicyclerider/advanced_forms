class CreateRecipes < ActiveRecord::Migration[8.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.references :user, null: false, foreign_key: true
      t.text :instructions

      t.timestamps
    end
  end
end
