class Owner < ActiveRecord::Base
    
    mount_uploader :avatar, AvatarUploader
    
    geocoded_by :address
    reverse_geocoded_by :latitude, :longitude
    after_validation :geocode, :reverse_geocode
    
    validates_presence_of:name, message: "enter the your name please"
    validates_presence_of:address, message: "enter the your address please"
    validates_presence_of:state, message: "enter the your state please"
    validates_presence_of:province, message: "enter the your province please"
    validates_presence_of:phone_number, message: "enter the your phone_number please"
    validates_uniqueness_of:real_state_number, allow_blank: true
    validates_format_of :phone_number, with: /\A(\d{10}|\(?\d{3}\)?[-. ]\d{3}[-.]\d{4})\z/
    
end
