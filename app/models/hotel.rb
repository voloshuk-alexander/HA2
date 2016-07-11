class Hotel < ActiveRecord::Base
#validates :price,numericality:{greater_than:0}
#validates :description, presence: true, length: {minimum: 100, maximum: 3000}
#validates :count_name,:city,:street,:name, presence: true, length: {minimum: 3, maximum: 100}
  mount_uploader :photo, ImageUploader
end
