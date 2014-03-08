class SecretTagging < ActiveRecord::Base
  belongs_to :secret
  belongs_to :tag
end
