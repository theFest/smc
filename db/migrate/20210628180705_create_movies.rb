class CreateMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.date :year
      t.string :director
      t.string :lenght
      t.decimal :rating
      t.text :description
      t.boolean :watched

      t.timestamps
    end
  end
end
