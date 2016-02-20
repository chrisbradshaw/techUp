class Conference < ActiveRecord::Base
  belongs_to :topic
  scope :upcoming, -> { where "date > ?", Time.zone.now }
  scope :past, -> { where "date <= ?", Time.zone.now }

  belongs_to :creator, class_name: 'User'
  has_many :attendees, through: :user_conferences
  has_many :user_conferences


  validates :title, presence: true
  validates :location, presence: true
  validates :date, presence: true
end

