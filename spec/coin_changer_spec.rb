require 'coin_changer'

RSpec.describe Coinchanger, "change" do

	let(:penny) { 1 }
	let(:nickel){ 5 }

	it "given one cent it returns a penny" do 
		coin_changer = Coinchanger.new
		expect(coin_changer.dispense(1)).to eq [penny]  
	end

	it "given two cents it returns two pennies" do 
		coin_changer = Coinchanger.new
		expect(coin_changer.dispense(2)).to eq [penny, penny]  
	end

	it "given three cents it returns three pennies" do 
		coin_changer = Coinchanger.new
		expect(coin_changer.dispense(3)).to eq [penny, penny, penny]  
	end

	it "given five cents it returns one nickel" do 
		coin_changer = Coinchanger.new
		expect(coin_changer.dispense(5)).to eq [nickel]  
	end

	it "given six cents it returns one nickel and one penny" do 
		coin_changer = Coinchanger.new
		expect(coin_changer.dispense(6)).to eq [nickel, penny]  
	end
		it "given seven cents it returns one nickel and two pennies" do 
		coin_changer = Coinchanger.new
		expect(coin_changer.dispense(7)).to eq [nickel, penny, penny]  
	end
end
# dime = 10
# nickel = 5
# penny = 1
# [dime, nickel, penny, penny]