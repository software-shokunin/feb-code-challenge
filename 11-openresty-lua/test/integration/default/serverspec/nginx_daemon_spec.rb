require 'serverspec'
require 'net/http'

# Required by serverspec
set :backend, :exec

describe 'Nginx Daemon' do
  it 'is listening on port 80' do
    expect(port(80)).to be_listening
  end

  it 'has a running service of nginx' do
    expect(service('nginx')).to be_running
  end

  it 'has an addition endpoint' do
    expect(
      Net::HTTP.get(URI('http://localhost/calculate/1/plus/2'))
    ).to include('3')
  end
end
