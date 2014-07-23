require 'spec_helper'

describe FormHelper do
  describe "CustomFormBuilder" do
    let(:resource) { FactoryGirl.build :vendor }
    let(:builder) { FormHelper::CustomFormBuilder.new :vendor, resource, self, {} }
    describe "#c_text_field" do
      let(:output) do
        builder.c_text_field :name 
      end
      it "can generate a text input element" do
        expect(output).to start_with("<input")
        expect(output).to include("type=\"text\"")
        expect(output).to include("class=\"form-control\"")
      end
    end

    describe "#c_date_field" do
      let(:output) do
        builder.c_date_field :created_at
      end
      it "can generate a date picker control with template style" do
        expect(output).to start_with("<div")
        expect(output).to include("date-picker")
        expect(output).to end_with("</div>")
      end
    end

    describe "#c_datetime_field" do
      let(:output) do
        builder.c_datetime_field :created_at
      end
      it "can generate a datetime picker control with template style" do
        expect(output).to start_with("<div")
        expect(output).to include("form_datetime")
        expect(output).to end_with("</div>")
      end
    end

    describe "#c_name_field" do
      let(:output) do
        builder.c_name_field :name
      end
      it "can load locale config" do
        expect(output).to eq("名称")
      end
    end

    describe "#error_messages" do
      let(:output) do
        resource.errors[:base] = "test error"
        builder.error_messages
      end
      it "output alert element" do
        expect(output).to start_with("<div")
        expect(output).to include("test error")
        expect(output).to end_with("</div>")
      end
    end
  end
end