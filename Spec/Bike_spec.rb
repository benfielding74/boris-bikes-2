require 'bike'
describe Bike do 
  it 'stores bike health' do 
  expect(subject.working?).to eq(true)
  end

  it 'can report a broken bike' do
    subject.report_broken
    expect(subject).to be_broken
  end
end