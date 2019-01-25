require 'spec_helper'
describe 'customapche' do
  context 'with default values for all parameters' do
    it { should contain_class('customapche') }
  end
end
