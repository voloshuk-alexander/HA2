class AverageCache < ActiveRecord::Base
  belongs_to :rater, :class_name => "Hotel"
  belongs_to :rateable, :polymorphic => true
end
