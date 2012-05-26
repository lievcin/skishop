class Ski < ActiveRecord::Base
  attr_accessible :brand, :condition, :number, :size, :store_id
  belongs_to :store 
  has_many :packages
  validates :number, :uniqueness => { :scope => :store_id }
  validates_presence_of :number, :size
  
  scope :available, where(:available => '1')
  scope :reserved, where(:available => '0')  
  
  scope :this_store, lambda { |store|
      where("skis.store_id = ?", store.id)
  }
  
  before_create :allocate
  
  private
  
  def allocate
  self.in_store = true
  self.available = true
  end
  
end
