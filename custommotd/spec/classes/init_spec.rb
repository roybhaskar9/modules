require 'spec_helper'
describe 'custommotd' do
  context 'with default values for all parameters' do
    it { should contain_class('custommotd') }
  end
end
