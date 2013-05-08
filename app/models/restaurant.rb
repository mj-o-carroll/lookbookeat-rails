class Restaurant < ActiveRecord::Base
  
  attr_accessible :gmaps, :latitude, :longitude, :address, :coeliac_friendly, :description, :email, :food_type, :location, :name, :password, :password_confirmation, :username, :phone_no, :picture, :price_range, :rating, :veg_friendly, :vegan_friendly
  has_secure_password

  has_many :booking
  has_many :menu
  has_many :comments

acts_as_gmappable

def gmaps4rails_address
  "#{name}, #{address}"
end

=begin before_save do |restaurant| 
      
        restaurant.email = email.downcase 
        restaurant.remember_token = SecureRandom.urlsafe_base64
        end
  validates :name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence:   true,
                    format:     { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { minimum: 6 }
=end  validates :password_confirmation, presence: true

def self.search(params)
  
    
    #find( :conditions => ['location LIKE ?', "%#{search}%"])

    #search_condition = "search"
  find(:all, :conditions => ['location = ? AND food_type = ? AND price_range = ? AND rating = ?', params[:location], params[:food_type], params[:price_range], params[:rating]])
  #@extant = Vote.find(:last, :conditions => ["item_id = ? AND user_id = ?", item, uid])
  
end

  def show

    @restaurant = Restaurant.find(params[:id])
    render 'show'

  end

end
