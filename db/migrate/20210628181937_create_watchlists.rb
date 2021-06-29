class CreateWatchlists < ActiveRecord::Migration[6.1]
  def change
    create_table :watchlists do |t|
      t.string :movie
      t.datetime :added

      t.timestamps
    end
  end
end
