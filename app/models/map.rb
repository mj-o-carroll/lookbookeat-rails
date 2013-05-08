class Map < ActiveRecord::Base
  attr_accessible :gmaps, :latitude, :longitude, :name, :address
  acts_as_gmappable

  def gmaps4rails_address
  "#{name}, #{address}"
end

end
