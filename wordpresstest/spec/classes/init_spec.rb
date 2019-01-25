require 'spec_helper'
describe 'wordpresstest' do
  context 'with default values for all parameters' do
    it { should contain_class('wordpresstest') }
  end
end
