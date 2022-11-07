class Product < ActiveRecord::Base
    has_many :reviews
    has_many :users, through: :reviews
    def leave_review(user, star_rating, comment)
        Review.create(product: self, user: user, star_rating: star_rating, comment: comment)
    end
    def print_all_reviews
        self.reviews.each do |review|
        puts "Review for #{review.product.name} by #{review.user.name}: #{reveiw.star_rating}. #{reveiw.comment}"
        end
    end
    def average_rating
        aver = self.reveiws.sum(:star_rating)/self.reveiws.length
        aver.to_f
    end
end