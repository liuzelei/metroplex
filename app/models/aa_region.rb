class AaRegion < ActiveRecord::Base
  # # association
  belongs_to :aa_vendor
  belongs_to :vendor
  
  # before_save :set_vendor

  # private
  # def set_vendor
  #   self.vendor = self.aa_vendor.vendor
  # end
end
