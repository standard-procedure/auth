require "rails_helper"

RSpec.describe User, type: :model do
  describe "#name" do
    it "is mandatory" do
      user = User.new name: ""
      expect(user).to_not be_valid
      expect(user.errors).to include :name
    end
  end
end
