require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef", name: "Chris") }
  let(:cake) { Dessert.new("cake", 10, chef) }
  let(:hotdog) { Dessert.new("hotdog", "hello", chef) }

  describe "#initialize" do
    it "sets a type" do
        expect(cake.type).to eq("cake")
    end
    it "sets a quantity" do
        expect(cake.quantity).to eq(10)
    end
    it "starts ingredients as an empty array" do
        expect(cake.ingredients).to eq([])
    end
    it "raises an argument error when given a non-integer quantity" do 
        expect(hotdog.quantity).to raise_error(ArgumentError) 
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do 
        cake.add_ingredient("icing")
        expect(cake.ingredients).to include("icing")
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do  
        new_ingredients = ["X","Y","Z","B"]
        holder = []
        new_ingredients.each do |val|
            holder << val
        end
        expect(new_ingredients).to eq(holder)
        new_ingredients.mix!
        expect(new_ingredients).not_to eq(holder)
    end     
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
        cake.eat(10)
        expect(cake.quantity).to eq(0)
    end
    it "raises an error if the amount is greater than the quantity" do
        expect { cake.eat(100)}.to raise_error("not enough left!")
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do
        allow(chef).to receive(:titleize).and_return("Chef Chris the Great Baker")
        expect(cakeserve).to eq("Chef Chris the Great Baker has made 10 cake!")
    end
  end 

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do
      expect(chef).to receive(:bake).with(cake)
      cake.make_more
    end
  end
end

