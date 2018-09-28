class Show < ActiveRecord::Base

  def self.highest_rating
    self.maximum(:rating)
  end

  def self.most_popular_show
    show = Show.find_by(rating: Show.highest_rating)
    show
  end

  def self.lowest_rating
    self.minimum(:rating)
  end

  def self.least_popular_show
    show = Show.find_by(rating: Show.lowest_rating)
    show
  end

  def self.ratings_sum
    self.sum(:rating)
  end

  def self.popular_shows
    shows = self.where("rating > 5")
  end

  def self.shows_by_alphabetical_order
    self.order(:name)
  end

end
