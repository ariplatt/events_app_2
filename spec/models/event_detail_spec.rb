require 'rails_helper'

RSpec.describe EventDetail, type: :model do
  
    describe "Direct Associations" do

    it { should belong_to(:event) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do

    end
end