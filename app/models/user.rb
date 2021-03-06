class User < ApplicationRecord
    before_save :downcase_email
    attr_accessor :remember_token
    validates :name, presence: true, length: { maximum: 50 }
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, length: { maximum: 255 },
    format: { with: VALID_EMAIL_REGEX },
    uniqueness: true
    has_secure_password
    validates :password, length: {maximum: 20,minimum: 6}, allow_nil: true
    belongs_to :role
    has_one :card 

    class << self
	    def digest(string)
			cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST : BCrypt::Engine.cost
			BCrypt::Password.create(string, cost: cost)
		end	

		def new_token
			SecureRandom.urlsafe_base64
		end
	end
    def remember
        self.remember_token = User.new_token
        update remember_digest: User.digest(remember_token)
    end
    def forget
        update remember_digest: nil
    end  
    def current_user?(user)
        user && user == self
    end
    def authenticated?(remember_token)
        BCrypt::Password.new(remember_digest).is_password?(remember_token)
    end
    private 
    def downcase_email
        self.email = email.downcase
    end    
end
