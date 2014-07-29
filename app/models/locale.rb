class Locale < ActiveRecord::Base
  validates_length_of :city, minimum: 5, maximum: 50, allow_blank: false
  validates_uniqueness_of :city
end
