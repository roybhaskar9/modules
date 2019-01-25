require 'spec_helper'
describe 'customuser' do
  context 'with default values for all parameters' do
    it { should contain_class('customuser') }
  end
end
