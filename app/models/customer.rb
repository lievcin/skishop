class Customer < ActiveRecord::Base
  attr_accessible :country, :first_name, :hotel, :last_name, :phone, :store_id
  validates_presence_of :first_name, :last_name
  belongs_to :store
  has_many :packages
  has_many :rentals, :through => :packages
  
end
