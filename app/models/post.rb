class Post < ApplicationRecord
  belongs_to :tenant
  validates :tenant, presence: true

  default_scope { where(tenant: Tenant.current_id) }
end
