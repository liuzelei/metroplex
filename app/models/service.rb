class Service < ActiveRecord::Base
  # validate
  validates :no, :name, presence: true
end
