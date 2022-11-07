class Product < ActiveRecord::Base
    has_many :reveiws
    has_many :users, through: :reveiws
end