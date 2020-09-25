class Show < ActiveRecord::Base 
  
  def self.highest_rating 
    self.maximum(:rating)
  end 
  
  def self.most_popular_show 
    self.order(rating: :desc).limit(1).first
    # self.where("rating = ?", self.highest_rating").first
  end 
  
  def self.lowest_rating 
    self.minimum(:rating)
    # returns only the rating, not the Show object
  end 
  
  def self.least_popular_show 
    self.order(rating: :asc).limit(1).first
    # self.where("rating = ?", self.lowest_rating").first
  end  
  
  def self.ratings_sum 
    self.sum(:rating)
  end 
  
  def self.popular_shows 
    self.where("rating > ?", 5)
    # self.where("rating >= ?", 5)
  end 
  
  def self.shows_by_alphabetical_order 
    self.order(name: :asc)
    # self.order(:name)
  end 
  
end