require 'rails_helper'

RSpec.describe Vendor, :type => :model do
  it "fails validation with no name" do
    expect(Vendor.new.error_on(:name).size).to eq(1)
  end

  it "pass validation" do
    expect(Vendor.new(name: "上海灵秀汽车修理厂").error_on(:name).size).to eq(0)
  end
end
