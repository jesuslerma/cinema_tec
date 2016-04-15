class Movie < ActiveRecord::Base
  validates :name, presence: true
  validates :name, uniqueness: true
  has_many :ranking, dependent: :destroy
end
