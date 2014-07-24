class AaVendor < ActiveRecord::Base
  # association
  has_many :aa_trailers
  has_many :aa_regions
  has_many :aa_workers

  accepts_nested_attributes_for :aa_trailers, allow_destroy: true
  accepts_nested_attributes_for :aa_regions, allow_destroy: true
  accepts_nested_attributes_for :aa_workers, allow_destroy: true
end
