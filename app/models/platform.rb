class Platform < ApplicationRecord
  has_many :game_platforms
  has_many :games
end
