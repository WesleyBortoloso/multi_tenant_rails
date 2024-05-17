class Tenant < ApplicationRecord
  validates :subdomain, presence: true, uniqueness: true
  has_many :posts

  def self.current_id=(id)
    Thread.current[:current_tenant_id] = id
  end

  def self.current_id
    Thread.current[:current_tenant_id]
  end
end
