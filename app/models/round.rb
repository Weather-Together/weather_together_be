class Round < ApplicationRecord
  belongs_to :game
  has_many :votes
  has_many :users, through: :votes

  # validates_presence_of :game_id
  # validates_presence_of :status
  # validates_presence_of :type
  
end