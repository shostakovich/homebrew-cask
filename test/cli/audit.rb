describe Cask::CLI::Audit do
  it 'audits all casks if no cask was provided' do
    Cask.stubs(:all => [stub, stub])
    
    auditor = Object.new.should_receive(:audit).times(2)
    
    Cask::CLI::Audit..run([], auditor)
  end
end
