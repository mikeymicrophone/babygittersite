class Site < ActiveRecord::Base
  has_many :version_uses
  has_many :versions, :through => :version_uses
end
