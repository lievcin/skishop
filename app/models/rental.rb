class Rental < ActiveRecord::Base
  attr_accessible :time, :in_or_out, :package_id
  belongs_to :package
  has_many :customers, :through => :packages
end
