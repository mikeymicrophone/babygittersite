class Feature < ActiveRecord::Base
  has_many :feature_inclusions
  has_many :versions, :through => :feature_inclusions
end
