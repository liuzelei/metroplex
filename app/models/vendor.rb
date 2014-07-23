class Vendor < ActiveRecord::Base
  include ModelConcerns::Sequenable
  include ModelConcerns::Disable
  include ModelConcerns::Searchable

  # association
  has_one :aa_vendor

  # validate
  validates :name, presence: true

  # sequence
  sequence :VE

  # search
  quick_search :name, :province, :city, :region, :address, :mobile, :telephone, :contact

  # paper_trail
  has_paper_trail

  # kaminari config
  paginates_per 25
end
