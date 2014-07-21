class User < ActiveRecord::Base
  devise :cas_authenticatable, :trackable

  class << self
    def current_user=(user)
      Thread.current[:current_user] = user
    end

    def current_user
      Thread.current[:current_user]
    end
  end
end
