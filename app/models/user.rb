class User < ActiveRecord::Base
  include CentralAccount

  devise :cas_authenticatable, :trackable

  belongs_to :vendor
  belongs_to :car_owner
  belongs_to :customer

  class << self
    def current=(user)
      Thread.current[:current_user] = user
    end

    def current
      Thread.current[:current_user]
    end
  end
end
