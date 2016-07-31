class EmotionalExperience < ActiveRecord::Base
  belongs_to :emotion
  belongs_to :user
  has_many :associated_feeling
  has_many :feelings, through: :associated_feeling


end
