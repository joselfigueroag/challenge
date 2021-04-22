class CreateCharacters < ActiveRecord::Migration[6.1]
  def change
    create_table :characters do |t|
      t.string :name, null: false
      t.string :image, null: false
      t.integer :age, null: false
      t.belongs_to :movie_serie, null: false, foreign_key: true
      t.float :weight, null: false
      t.text :story, null: false

      t.timestamps
    end
  end
end
