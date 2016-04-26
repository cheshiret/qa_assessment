require 'rails_helper'
require 'spec_helper'

RSpec.describe User, type: :model do
  let(:user) { user = FactoryGirl.create(:user) }
  it "has a valid factory" do
    expect(user).to be_valid
  end
end