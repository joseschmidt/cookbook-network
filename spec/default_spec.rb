require 'spec_helper'

describe 'network::default' do
  let(:chef_run) do
    ChefSpec::Runner.new do |node|
      # override cookbook attributes
      node.set['file'] = {
        'header' => 'node.file.header'
      }
    end.converge(described_recipe)
  end # let

  it 'should include recipe network::hosts' do
    chef_run.should include_recipe 'network::hosts'
  end # it

  it 'should include recipe network::network' do
    chef_run.should include_recipe 'network::network'
  end # it

end # describe
