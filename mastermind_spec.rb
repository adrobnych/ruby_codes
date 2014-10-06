require './mastermind'
require './number_master'

describe Game, "#start" do

  it "has to say 'mastermind'" do
    game = Game.new
    game.start.should match(/mastermind/)
  end

  it "has to ask for next guess" do
    game = Game.new
    game.invite.should match(/Enter next guess/)
  end

end

describe NumberMaster do

	describe "#generate_secret" do
		it "has to generate number 4567" do
			nm = NumberMaster.new
			nm.secret.should == "4567"
		end
	end

	describe "#analize_guess" do
		it "has to return '2 positions' for 4589 guess" do
			nm = NumberMaster.new
			nm.analize_guess("4589").should include("2 positions")
		end
		it "has to return '0 positions' for 1289 guess" do
			nm = NumberMaster.new
			nm.analize_guess("1289").should include("0 positions")
		end
		it "has to return '1 misplaced' for 7123 guess" do
			nm = NumberMaster.new
			nm.analize_guess("7123").should include("1 misplaced")
		end
	end

end