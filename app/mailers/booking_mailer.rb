class BookingMailer < ActionMailer::Base
  default from: "ocarrollmj@gmail.com"

  def booking_email(restaurant)
    @restaurant = restaurant
    mail(:to => "juanmiguel@eircom.net", :subject => "A Booking From LookBookEat")

    


  end

end
