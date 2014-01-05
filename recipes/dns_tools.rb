#
# Cookbook Name:: network
# Recipe:: dns_tools
#
# Author:: Doc Walker (<doc.walker@jameshardie.com>)
#
# Copyright 2012-2013, James Hardie Building Products, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

include_recipe 'network::common'

package 'dns' do
  case node['platform_family']
  when 'rhel'
    package_name 'bind-utils'
  when 'debian'
    package_name 'dnsutils'
  end # case
  action :install
end # package
