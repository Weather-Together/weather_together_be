require "rails_helper"

RSpec.describe Round, type: :model do
  
  describe "relationships" do
    it { should have_many(:votes) }
    it { should belong_to(:game) }
    it { should have_many(:users).through(:votes) }
  end

  describe "validations" do
    # it { should validate_presence_of(:game_id) }
    # it { should validate_presence_of(:status) }
    # it { should validate_presence_of(:type) }
    # it { should validate_presence_of(:type) }
  end
end