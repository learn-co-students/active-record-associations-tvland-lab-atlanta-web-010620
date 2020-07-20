class AddDayGenreSeasonToShows < ActiveRecord::Migration[5.1]
    add_column :shows, :day, :string
    add_column :shows, :genre, :string
    add_column :shows, :season, :string
end