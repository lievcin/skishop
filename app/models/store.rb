class Store < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  attr_accessible :store_name, :owner_first_name, :owner_last_name, :country, :city, :phone
  # attr_accessible :title, :body

  has_many :boots
  has_many :skis
  has_many :customers    
  
  validates_presence_of :store_name, :owner_first_name, :owner_last_name, :country, :city, :email
  validates_length_of :store_name, :maximum => 100
  validates_format_of :email, :with => /^[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}$/i

end
