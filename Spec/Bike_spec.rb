require 'bike'
describe Bike do 
  it 'stores bike health' do 
  #Arrange
   
  #Act
  expect(subject).to respond_to(:working?)
  #Assert
  end

  it 'can report a broken bike' do
    subject.report_broken
    expect(subject).to be_broken
  end
end