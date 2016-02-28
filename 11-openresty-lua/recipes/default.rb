include_recipe 'apt'
include_recipe 'openresty'

service 'nginx' do
  action :start
end
