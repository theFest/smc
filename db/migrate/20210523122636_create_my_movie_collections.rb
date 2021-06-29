class CreateMyMovieCollections < ActiveRecord::Migration[6.1]
  def change
    create_table :my_movie_collections do |t|
      t.string :title
      t.string :rating
      t.integer :year
      t.string :director
      t.string :lenght
      t.text :description

      t.timestamps
    end
  end
end
