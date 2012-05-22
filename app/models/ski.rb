class Ski < ActiveRecord::Base
  attr_accessible :brand, :condition, :number, :size, :store_id
  belongs_to :store 
  has_many :packages

  scope :available, where(:available => 't')  
  
  before_create :allocate
  
  private
  
  def allocate
  self.in_store = true
  self.available = true
  end
  
end
