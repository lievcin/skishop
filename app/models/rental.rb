class Rental < ActiveRecord::Base
  attr_accessible :check_in, :check_out, :package_id
  belongs_to :package
end
