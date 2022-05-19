class Movie < ApplicationRecord
  has_many :bookmarks
  validates :title, :overview, presence: true, uniqueness: { case_sensitive: false }
end
