require 'bike'
describe Bike do 
  it 'stores bike health' do 
  #Arrange
   
  #Act
  expect(subject.working?).to eq(true)
  #Assert
  end

  it 'can report a broken bike' do
    subject.report_broken
    expect(subject).to be_broken
  end
end