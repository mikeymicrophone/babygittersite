class FeatureInclusion < ActiveRecord::Base
  belongs_to :feature
  belongs_to :version
end
