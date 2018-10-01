class Show < ActiveRecord::Base

  def highest_rating
    Show.maximum('rating')
  end

  def most_popular_show
    Show.highest_rating
  end

  def lowest_rating
    Show.minimum('rating')
  end

  def least_popular_show
    Show.lowest_rating
  end

  def ratings_sum
    rating.all.inject(:+)
  end

  def popular_shows
    Show.where("rating > '5'")
  end

  def shows_by_alphabetical_order
    Show.order(:name)
  end











end
