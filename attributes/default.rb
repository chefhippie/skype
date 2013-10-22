#
# Cookbook Name:: skype
# Attributes:: default
#
# Copyright 2013, Thomas Boerger
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

default["skype"]["dependencies"] = %w(
  libpng12-0
  xorg-x11-libs
)

default["skype"]["version"] = "4.2.0.11"

case node["platform_family"]
when "suse"
  default["skype"]["package_provider"] = Chef::Provider::Package::Rpm
  default["skype"]["package_file"] = "skype-#{node["skype"]["version"]}-suse.i586.rpm"
  default["skype"]["package_url"] = "http://download.skype.com/linux/#{node["skype"]["package_file"]}"
when "debian"
  default["skype"]["package_provider"] = Chef::Provider::Package::Apt
  default["skype"]["package_file"] = "skype-debian_#{node["skype"]["version"]}-1_i386.deb"
  default["skype"]["package_url"] = "http://download.skype.com/linux/#{node["skype"]["package_file"]}"
end