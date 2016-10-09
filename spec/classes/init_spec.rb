require 'spec_helper'
describe 'soundmodem' do

  context 'with defaults for all parameters' do
    it { should contain_class('soundmodem') }
  end
end
