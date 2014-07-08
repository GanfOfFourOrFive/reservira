module Admin
  class BasePolicy
    attr_accessor :user, :base

    def initialize(user, base)
      @user = user
      @base = base
    end

    def index?
      @user.admin?
    end
  end
end
