class Version < ActiveRecord::Base
  has_many :feature_inclusions
  has_many :features, :through => :feature_inclusions
  has_many :version_uses
  has_many :sites, :through => :version_uses
end
