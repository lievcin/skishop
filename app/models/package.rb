class Package < ActiveRecord::Base
  attr_accessible :boot_id, :customer_id, :end_date, :ski_id, :start_date
  validates_presence_of :customer_id, :start_date, :end_date, :ski_id, :boot_id
  belongs_to :customer 
  belongs_to :boot
  belongs_to :ski
  has_many :rentals
  after_save :reserve_kit
  before_destroy :release_kit
  
  # validate :checking_boot_not_already_reserved, :on => :create
  
  private
  
  # def checking_boot_not_already_reserved
  #   if self.boot.available = '0'
  #     errors.add(:boot, "has been reserved while session open, reload screen")
  #   end
  # end
    
  def reserve_kit
    @boot = self.boot
    @boot.available = false
    @boot.save
    @ski = self.ski
    @ski.available = false
    @ski.save    
  end
  
  def release_kit
    @boot = self.boot
    @boot.available = true
    @boot.save
    @ski = self.ski
    @ski.available = true
    @ski.save    
  end
  
end
