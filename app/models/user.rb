class User < ActiveRecord::Base
  has_many :conferences, foreign_key: 'creator_id'
  has_many :attended_conferences, through: :user_conferences
  has_many :user_conferences
  has_many :topics, through: :conferences

  validates :name, presence: true
  validates :email, presence: true

  before_save :ensure_authentication_token

  def ensure_authentication_token
    if authentication_token.blank?
      self.authentication_token = generate_authentication_token
    end
  end

  private

    def generate_authentication_token
      loop do
        token = Devise.friendly_token
        break token unless User.where(authentication_token: token).first
      end
    end
end
