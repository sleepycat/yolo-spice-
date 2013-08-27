class Magazine < ActiveRecord::Base
  #before_save :submit_to_address
  validates :title, :genre, :start_date, :end_date, :payment, :magazineformat, :publicationcycle, :submissionlimit, :address_number, :street_name, :city_name, :province_name, :country_name, presence: true

  #validates :title, uniqueness: true,
  #					length: >= 2

  #validates :address_number, format: {
  #	with: %r{\1-9\}i,
  #}
  has_many :submission_restrictions, dependent: :destroy

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

    if (start_date.month <= current_date.month && end_date.month >= current_date.month) && (start_date.day <= current_date.day && end_date.day >= current_date.day)
      "Open"
    else
      "Closed"
    end
  end
end
