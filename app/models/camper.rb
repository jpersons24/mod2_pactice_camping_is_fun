class Camper < ApplicationRecord

   has_many :signups
   has_many :activities, through: :signups

   # camper must have a number and age
   validates :name, :age, presence: true
   
   # camper name must be unique
   validates :name, uniqueness: true

   # camper age must be between 8-18 (number field restricts choices in new view)
   validates :age, numericality: {greater_than: 7, less_than: 19}

end
