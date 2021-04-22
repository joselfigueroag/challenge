class CreateMovieSeries < ActiveRecord::Migration[6.1]
  def change
    create_table :movie_series do |t|
      t.string :title, null: false
      t.string :image, null: false
      t.date :create_date, null: false
      t.string :gender, null: false
      t.integer :qualification, null: false

      t.timestamps
    end
  end
end
