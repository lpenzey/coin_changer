require 'coin_changer'
require 'spec_helper'

RSpec.describe Coinchanger, "dispense" do
		coin_changer = Coinchanger.new

	let(:penny) { 1 }
	let(:nickel){ 5 }
	let(:dime)  { 10 }
	let(:quarter)  { 25 }

	it "given one cent it returns a penny" do 
		expect(coin_changer.dispense(1)).to eq [penny]  
	end

	it "given two cents it returns two pennies" do 
		expect(coin_changer.dispense(2)).to eq [penny, penny]  
	end

	it "given five cents it returns one nickel" do 
		expect(coin_changer.dispense(5)).to eq [nickel]  
	end

	it "given six cents it returns one nickel and one penny" do 
		expect(coin_changer.dispense(6)).to eq [nickel, penny]  
	end

	it "given 10 cents it returns one dime" do 
		expect(coin_changer.dispense(10)).to eq [dime]  
	end

	it "given 11 cents it returns one dime" do 
		expect(coin_changer.dispense(11)).to eq [dime, penny]  
	end

	it "given 15 cents it returns one dime and one nickel" do 
		expect(coin_changer.dispense(15)).to eq [dime, nickel]  
	end

	it "given 16 cents it returns one dime and one nickel and one penny" do 
		expect(coin_changer.dispense(16)).to eq [dime, nickel, penny]  
	end

	it "given 20 cents it returns two dimes" do 
		expect(coin_changer.dispense(20)).to eq [dime, dime]  
	end

	it "given 25 cents it returns one quarter" do 
		expect(coin_changer.dispense(25)).to eq [quarter]  
	end

	it "given 96 cents it returns 3 quarters two dimes and one penny" do 
		expect(coin_changer.dispense(96)).to eq [quarter, quarter, quarter, dime, dime, penny]  
	end

	it "given 146 cents it returns 5 quarters two dimes and one penny" do 
		expect(coin_changer.dispense(146)).to eq [quarter, quarter, quarter, quarter, quarter, dime, dime, penny]  
	end
end
