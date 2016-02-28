require_relative '../../spec_helper.rb'

describe 'nginx-calc::default' do
  let(:chef_run) { ChefSpec::SoloRunner.converge(described_recipe) }

  it 'installs openresty recipe' do
    expect(chef_run).to include_recipe('openresty')
  end

  it 'starts the nginx daemon' do
    expect(chef_run).to start_service('nginx')
  end
end
