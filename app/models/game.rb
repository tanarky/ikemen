class Game < ApplicationRecord
  belongs_to :category
  has_many :game_platforms
  has_many :platforms, through: :game_platforms
  has_many :game_tags
  has_many :tags, through: :game_tags
  has_many :topics
  has_many :announces
end
