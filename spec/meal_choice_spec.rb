require 'spec_helper'

describe '#meal_choice' do
  it 'should default to meat for the protein' do
    expect(meal_choice("broccoli", "macaroni")).to eq("A plate of meat with broccoli and macaroni.")
  end

  it 'should allow you to set a protein' do
    expect(meal_choice("broccoli", "macaroni", "tofu")).to eq("A plate of tofu with broccoli and macaroni.")
  end

  it 'should puts "What a nutritious meal!" and your order to the console' do
    expect($stdout).to receive(:puts).with("What a nutritious meal!")
    expect($stdout).to receive(:puts).with("A plate of meat with broccoli and macaroni.")
    meal_choice("broccoli", "macaroni")
  end
end
