class AssociatedFeeling < ActiveRecord::Base
  belongs_to :emotional_experience
  belongs_to :feeling

end
