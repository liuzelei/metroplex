FactoryGirl.define do
  factory :aa_service, class: Service do
    no "AA"
    name "救援"
  end

  factory :mt_service, class: Service do
    no "MT"
    name "保养"
  end

  factory :cw_service, class: Service do
    no "CW"
    name "洗车"
  end

  factory :rp_service, class: Service do
    no "RP"
    name "维修"
  end
end