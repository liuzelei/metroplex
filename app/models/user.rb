class User < ActiveRecord::Base
  include CentralAccount

  devise :cas_authenticatable, :trackable

  has_one :vendor
  has_one :car_owner
  has_one :customer

  class << self
    def current=(user)
      Thread.current[:current_user] = user
    end

    def current
      Thread.current[:current_user]
    end
  end
end
