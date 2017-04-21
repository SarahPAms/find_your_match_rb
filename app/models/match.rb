class Match < ApplicationRecord
  belongs_to :user

  validates :date, presence: true
  validates :user, presence: true
  validates :matched_user, presence: true

  def self.previous_matches(date)
    where(date < DateTime.now.beginning_of_day)
  end
end
