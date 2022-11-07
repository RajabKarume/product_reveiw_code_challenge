class User < ActiveRecord::Base
    has_many :reveiws
    has_many :products, through: :reveiws
end