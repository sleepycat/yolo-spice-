class Magazine < ActiveRecord::Base
  #before_save :submit_to_address
  
	def submit_to_address
    "#{address_number} #{unit_number} #{street_name} #{city_name}, #{province_name}, #{postal_code} #{country_name}"
	end

  def reading_period
    "#{start_date.strftime("%B-%d")} to #{end_date.strftime("%B-%d")}"
  end

	def current_date
    @current_date = Time.now #Time.now.strftime("%B-%d")
	end

	def open_status?
    
	  if start_date < current_date && end_date > current_date #<-- Time.zone.now
	    "Open"
		else
	    "Closed"
	end
  end
end
