require 'spec_helper'

describe 'meal_choice' do
  it 'should default to meat for protein' do
    expect(meal_choice("broccoli","macoroni")).to eq("A plate of meat with broccoli and macoroni.")
  end

  it 'should allow you to set a protein' do
    expect(meal_choice("broccoli","macoroni","tofu")).to eq("A plate of tofu with broccoli and macoroni.")
  end
  it 'should puts "What a nutritious meal!" and your order to the console' do
    expect($stdout).to receive(:puts).with("What a nutritious meal!")
    expect($stdout).to receive(:puts).with("A plate of meat with broccoli and macoroni.")
    meal_choice("broccoli","macoroni")
  end
end