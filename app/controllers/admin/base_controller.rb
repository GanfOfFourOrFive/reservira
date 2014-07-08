module Admin
  class BaseController < ApplicationController
    before_action :authenticate_user!
    layout "admin/application"

    def index
      unless current_user.admin?
        redirect_to root_path, alert: "Você não tem permissão."
      end
    end
  end
end
