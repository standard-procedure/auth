require "rails_helper"

RSpec.describe Role, type: :model do
  describe "#name" do
    it "is mandatory" do
      role = Role.new name: ""
      expect(role).to_not be_valid
      expect(role.errors).to include :name
    end

    it "is unique at a given level" do
      parent = Role.create! name: "Parent"
      Role.create! name: "Child", parent: parent
      role = Role.new name: "Child", parent: parent
      expect(role).to_not be_valid
      expect(role.errors).to include :name
    end
  end

  describe "#parent" do
  end

  describe "#children" do
    it "lists child roles" do
      parent = Role.create! name: "Parent"
      child = Role.create! name: "Child", parent: parent
      expect(parent.children).to include child
    end

    it "lists roles in alphabetical order" do
      parent = Role.create! name: "Parent"
      Role.create! name: "Z", parent: parent
      Role.create! name: "A", parent: parent
      expect(parent.children.pluck(:name)).to eq %w[A Z]
    end
  end
end
