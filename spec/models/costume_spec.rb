require 'rails_helper'

RSpec.describe Costume, type: :model do
  it "is valid with valid attributes" do
    costume = Costume.new(name: "The Corpse Bride", type: "spooky", description: "Emily from the corpse bride. You will need a corset and tattered skirt, a blue wig, veil and bouquet and blue body paint")
    expect(costume).to be_valid
  end

  it "is not valid if its missing a name" do
    costume = Costume.new(type: "spooky", description: "Emily from the corpse bride. You will need a corset and tattered skirt, a blue wig, veil and bouquet and blue body paint")
    expect(costume).to_not be_valid
  end

  it "is not valid if its missing a type" do
    costume = Costume.new(name: "The Corpse Bride", description: "Emily from the corpse bride. You will need a corset and tattered skirt, a blue wig, veil and bouquet and blue body paint")
    expect(costume).to_not be_valid
  end

  it "is not valid its missing a description" do
    costume = Costume.new(name: "The Corpse Bride", type: "spooky")
    expect(costume).to_not be_valid
  end
end
