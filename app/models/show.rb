class Show < ActiveRecord::Base 
  
  def self.highest_rating 
    Show.maximum(:rating)
  end 
  
  def self.most_popular_show 
    Show.order(rating: :desc).limit(1).first
    # self.where("rating = ?", self.highest_rating").first
  end 
  
  def self.lowest_rating 
    Show.minimum(:rating)
    # returns only the rating, not the Show object
    #
  end 
  
  def self.least_popular_show 
    Show.order(rating: :asc).limit(1).first
  end  
  
  def self.ratings_sum 
    Show.sum(:rating)
  end 
  
  def self.popular_shows 
    Show.where("rating > ?", 5)
  end 
  
  def self.shows_by_alphabetical_order 
    Show.order(name: :asc)
  end 
  
end