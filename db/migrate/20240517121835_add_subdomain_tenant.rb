class AddSubdomainTenant < ActiveRecord::Migration[7.0]
  def change
    add_column :tenants, :subdomain, :string
  end
end
