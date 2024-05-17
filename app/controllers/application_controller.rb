class ApplicationController < ActionController::Base
  before_action :set_current_tenant

  def set_current_tenant
    if request.subdomain.present?
      tenant = Tenant.find_by(subdomain: request.subdomain)
      if tenant
        Tenant.current_id = tenant.id
      else
        redirect_to invalid_subdomain_url
      end
    else
      redirect_to root_url(subdomain: 'www')
    end
  end
end
