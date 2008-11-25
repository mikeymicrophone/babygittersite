class VersionUse < ActiveRecord::Base
  belongs_to :version
  belongs_to :site
end
