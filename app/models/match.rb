class Match < ApplicationRecord
  belongs_to :user

  def self.previous_matches(date)
    where(date < DateTime.now.beginning_of_day)
  end
end
