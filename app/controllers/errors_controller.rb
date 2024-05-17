class ErrorsController < ApplicationController
  def invalid_subdomain
    render plain: 'Subdomínio inválido', status: :not_found
  end
end
