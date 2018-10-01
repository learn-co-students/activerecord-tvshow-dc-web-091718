class AddSeasonsToShows < ActiveRecord::Migration
  def change
    add_column :Shows, :season, :string
  end
end
