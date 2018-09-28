require 'pry'

class Show < ActiveRecord::Base

  def self.highest_rating
    show = Show.all.order(rating: :desc).limit(1)
    show[0].rating
  end

  def self.most_popular_show
    show = Show.all.order(rating: :desc).limit(1)
    show[0]
  end

  def self.lowest_rating
    show = Show.all.order(rating: :asc).limit(1)
    show[0].rating
  end

  def self.least_popular_show
    show = Show.all.order(rating: :asc).limit(1)
    show[0]
  end

  def self.ratings_sum
    Show.sum(:rating)
  end

  def self.popular_shows
    Show.where("rating > 5")
  end

  def self.shows_by_alphabetical_order
    Show.all.order(name: :asc)
  end
end
