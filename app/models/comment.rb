class Comment < ApplicationRecord
	belongs_to :user
	belongs_to :place
	after_create :send_comment_email


	RATINGS = {
		'one star': '1_star',
		'two star': '2_stars',
		'three star': '3_stars',
		'four star': '4_stars',
		'five stars': '5_stars'
		 #user will see   #stored in database
	}

	def humanized_rating
		RATINGS.invert[self.rating]
	end	

	def send_comment_email
		NotificationMailer.comment_added(self).deliver_now
	end
end

